Return-Path: <devicetree+bounces-277981-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oP7+EdhCvGmAwAIAu9opvQ
	(envelope-from <devicetree+bounces-277981-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:39:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9712D1269
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:39:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 273CF300C0D2
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 18:39:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA86530E0D5;
	Thu, 19 Mar 2026 18:39:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UKnJUMj1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62D5718EB0
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 18:39:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773945555; cv=pass; b=sVZ295EU7VlLpiJDzm4Rk1tMZgA3NQXJf/NLzxZIEkYCgTJlkenVggHsJYc1hE8oCEudPVeCi7ljZgQbZdQh4H9tCOGJQb+rw9A4+Ftk21ucIsCc/3yI0Tmcwmb+5PDPzrPzSAPPZ+hIF7h0jEpmVVt+sVaJDzdvZP2oi4tNPZg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773945555; c=relaxed/simple;
	bh=wx98uaVcJlbyPJHok3qOz5VS+w/Uyhd4kectCkHQIts=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tCrMU5fipIIp688lEgmvVUnop6Q7i90qKqAxp0qGDGxwhUhC2ncnQ0qWpuwi/ltuZVvhzi3rzyViI8wCVn22+OZdzCTnhsL4FStbFN82deMnoW+oL21+P6NCvCrsSDlaSH6YYrBBiUx5SzBD4DeFRa6kvat8vICYXkhGpmXTXXg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UKnJUMj1; arc=pass smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-59dcdf60427so1301267e87.3
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:39:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773945553; cv=none;
        d=google.com; s=arc-20240605;
        b=f6etJ2sB9nSmRt9FgfSKY3tTYTjcCGidMN5jPI37daZWiZZVQT6FTNyUgA83H+QW4R
         rtwvXRwnLzTvG6n4Lk3o8Mt3TjfjWC1tE/JM3lFaoAtTuUc7f8GKTDDVw7c5Rbz4RBRa
         qzeLeF6XZeGVq/fiKkJRGbi5iHJT4vmWkEa+DiOHwaYnciC6LjkddcjKBm33RQ7ryLk6
         7BgK4Ct6Xwr3I7WhL9QeYPmSPTTzO0bOPlWucd0Cg//VRNHUNDbn8XMr570f4h8Rr4RU
         vPPYLT93iTuwmsIXPaatB2aRddN9oiETpRLGk5ws5dyQazJpbeNLKnh08G6mefx89GJX
         Z0pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=5dtSkUt/0+k+zkoTrKcW+DOXMi+N2xx2OVINNsqDh8Y=;
        fh=hFpJp/FOF3RiM9uUT4h1aQNhXmXuQJ8EfD1xm9SaH1o=;
        b=DqAf09e4UmDeJ8QMYXxfn+qN/7SRIDFwye4NLmdTQrtvq60b/0KxRqngpQRC0lR6Dl
         VPVoVZ9wwrNeT4usZ9Hoq4jk+8VkDiIl5FxzZH7El9NMq5k3m11Ap/27ACu9r0Q+N0/G
         NjtMxEO1j86qc7KmeyeCptaevsZfNfrJi4YFxkmzxTNpPwPsrCUo7b4Uw7IoIEUzYluY
         VzlOa+PxMczSxZRYTC7rLY60nRR6A/JLYSFc5PUu/Mrf9R+ajvOKIm5/fVx2E2R18B2x
         9DNTJhEchkB/TPyN9Xx9nIuTdRJkmDvEsJg9j/kSZYhLcvDpabknDK1RHCn14SccaVWS
         iJ9Q==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773945553; x=1774550353; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5dtSkUt/0+k+zkoTrKcW+DOXMi+N2xx2OVINNsqDh8Y=;
        b=UKnJUMj1JfM2IsPyFvtJLT+HVnlnjjv1dRHVhfXsU0mMPsZUhDGm/yQ/gtYatuogtb
         4G4xrig7N3So0mzDef7w2wx0ipr5XLtTkrfo59cBPuMy241/m3rOYYL6c+2ioqG2t5Lx
         AzZviZTLHZMt2iIMBFq+VZkqG86yXmUOl+g/wz8lVQLU39Uswv+5MGKMwoTwgesFTsz7
         LIEKbivT/3Q8nehkBG07nBb9sD4VP9zI6TBYAnG9iDFsyt0FHrhCqYRty9YNMoEcOEDl
         Le6pSfkapgxaPsB+y2eDbDgBrSE1xys3rViAcIrQ8gPBVqHg7rZHnZXzae3diZCxEyPy
         L7Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773945553; x=1774550353;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5dtSkUt/0+k+zkoTrKcW+DOXMi+N2xx2OVINNsqDh8Y=;
        b=W0fHfGGuxu2f2d3lWCi6S2k3Naaa6URfkqXmka2ixzkRKwdR3TdHKgTAkUnhcZTn7U
         VOXZH6iPXTEY2eMLwiDWVHYCcWhmDm1ypb4C7fyEYj9cryX+NuOzZsQCCSEg9d1owHlf
         16HjlaBRBDBe8i/yHQf+yFCP5Hmw3UXkIiVWvp8jqWjBaVx/iR9iOyT8PVwxzMr7NjFh
         tBdgPkrX9aIxt0qxXmxKUoHFKNnSjkSh3POZKpQMrTAQy1Rs7YKl4tuLu8lFCi9pEDFU
         ++p2x32/C6I/AmitSqbh1wuNFrQFc1vDeX5TPMKlH/TkTejooi3qmGznj8qw7xVzcqKd
         zFZA==
X-Forwarded-Encrypted: i=1; AJvYcCVfnO9F7OThLRF5LNtX/UMh1q48N/jTZEtDT3R4XShc0V1BPBRLZ+J5zYr+/S+fJ3fRadPTFF2xv3L+@vger.kernel.org
X-Gm-Message-State: AOJu0YzgDEf7mrcgNyVBvsqfVADZN4c95GuaeOM+TcWARtBf3dvfvSFI
	s9PM0qkgHxznM9n84c46FCZAnArR62BsIuUo4NLPTwvmb7ngtrEupPvpucHbEuRqkCWhR4Qr13v
	nYUnuv1Bk2oFQAg61VUPybOtBRsO/fyk=
X-Gm-Gg: ATEYQzwrwEFxmhmJnRmkKl76GIrtEF//No0ps359IQv8Kyv4TvCIgej0ynIca03KpH4
	mwZzYqgHpg6nqOzqt2SMdWJIBiC+QJLdrK4WSUiyKwvItgjfJLhaxL3YSYaakBdc+hCjxfb9nC/
	ZTXGk7eLwrKP0teNg8CWPc0eGwksIqEW50GrYfR9bFNW7fe99GA/b/dLv0Ojbb2Ne/LWOT8GjYa
	4jnFOBpkoov06gtNPwN+jfnA9R+XOYzpD+hMbG2YKqCPEIO/Y+RpP9R8+z9wX/jhpLyWYaC/ynL
	b475xmqDZlFdmoh1NnLPHmKAg8QSovsu64lRK7vFkeXqQ7ZIxDYsp3yS0YoStcrFqyh1
X-Received: by 2002:a05:6512:23a9:b0:5a2:7a56:b30a with SMTP id
 2adb3069b0e04-5a285b6cbedmr30959e87.26.1773945552458; Thu, 19 Mar 2026
 11:39:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260311-ayn-qcs8550-v2-0-e66986e0f0cb@gmail.com>
 <20260311-ayn-qcs8550-v2-2-e66986e0f0cb@gmail.com> <c464d106-8e7b-41a5-b76c-ed5e7a82fb37@oss.qualcomm.com>
In-Reply-To: <c464d106-8e7b-41a5-b76c-ed5e7a82fb37@oss.qualcomm.com>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Thu, 19 Mar 2026 13:39:00 -0500
X-Gm-Features: AaiRm51t4avwyvzvLcAlaysld1xiugTPcZDvtm3iHLmSQI4lsTYBRd_nmd64Vzs
Message-ID: <CALHNRZ-AC+0+JdjvvQLREE-nXAzV+kJc_9GMNjVs=tT8GxKBzQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] arm64: dts: qcom: Add AYN QCS8550 Common
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Teguh Sobirin <teguh@sobir.in>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-277981-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[webgeek1234@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.691];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sobir.in:email,mail.gmail.com:mid,qualcomm.com:email,0.0.0.34:email]
X-Rspamd-Queue-Id: DC9712D1269
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 19, 2026 at 6:40=E2=80=AFAM Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 3/11/26 6:44 PM, Aaron Kling via B4 Relay wrote:
> > From: Teguh Sobirin <teguh@sobir.in>
> >
> > This adds a base dtb of everything common between the AYN QCS8550
> > devices. It is intended to be extended by device specific overlays.
> >
> > Signed-off-by: Teguh Sobirin <teguh@sobir.in>
> > Co-developed-by: Aaron Kling <webgeek1234@gmail.com>
> > Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> > ---
>
> [...]
>
> > +     pwm_fan: pwm-fan {
> > +             compatible =3D "pwm-fan";
> > +
> > +             fan-supply =3D <&vdd_fan_5v0>;
> > +             pwms =3D <&pm8550_pwm 3 50000>;
> > +
> > +             pinctrl-names =3D "default";
> > +             pinctrl-0 =3D <&fan_pwm_active>, <&fan_int>;
>
> property-n
> property-names
>
> in this order, everywhere, please

Ack

> > +
> > +             pulses-per-revolution =3D <4>;
> > +             interrupt-parent =3D <&tlmm>;
> > +             interrupts =3D <13 IRQ_TYPE_EDGE_FALLING>;
>
> interrupts-extended =3D <&tlmm 13 IRQ_...>;

Ack

> [...]
>
> > +             model =3D "AYN-Odin2";
> > +             audio-routing =3D
> > +                             "IN1_HPHL", "HPHL_OUT",
>
> Let's drop this empty linebreak

Ack

>
> > +                             "IN2_HPHR", "HPHR_OUT",
> > +                             "AMIC2", "MIC BIAS2",
> > +                             "TX SWR_INPUT1", "ADC2_OUTPUT";
> > +
> > +             speaker-i2s-dai-link {
> > +                     link-name =3D "Primary MI2S Playback";
> > +
> > +                     cpu {
> > +                             sound-dai =3D <&q6apmbedai PRIMARY_MI2S_R=
X>;
> > +                     };
>
> 'co'dec < 'cp'u, please resort

Ack

> [...]
>
> > +     vdd_fan_5v0: vdd-fan-5v0-regulator {
> > +             compatible =3D "regulator-fixed";
> > +             regulator-name =3D "vdd_fan_5v0";
> > +
> > +             regulator-min-microvolt =3D <5000000>;
> > +             regulator-max-microvolt =3D <5000000>;
> > +
> > +             gpio =3D <&tlmm 109 GPIO_ACTIVE_HIGH>;
> > +             enable-active-high;
> > +
> > +             pinctrl-names =3D "default";
> > +             pinctrl-0 =3D <&fan_pwr_active>;
> > +
> > +             regulator-state-mem {
> > +                     regulator-off-in-suspend;
> > +             };
>
> oh, I didn't know this binding existed.. but it seems valid indeed!
>
> [...]
>
> > +&i2c12 {
> > +     clock-frequency =3D <400000>;
> > +     status =3D "okay";
>
> Let's uniformly keep a \n before status

Ack

> > +};
> > +
> > +&i2c_master_hub_0 {
> > +     status =3D "okay";
>
> Please add a clock-frequency
> (you can read it back at runtime running a vendor kernel if you don't hav=
e a
> better source)

Mmm. I'll see if I can find that. But I don't see any of the existing
sm8550 devices setting this either.

> [...]
>
> > +     spk_amp_l: spk_amp_l@34 {
>
> underscores are no bueno in node names (between ':' and '@'), and they sh=
ould
> be generic, let's try amplifier@

Ack

> [...]
>
> > +&iris {
> > +     status =3D "okay";
>
> firmware-name?

Not needed. These devices are unfused and can use the generic firmware
like the devkits. I have verified this as noted in another response on
this change.

> [...]
>
> > +&sdhc_2 {
> > +     cd-gpios =3D <&pm8550_gpios 12 GPIO_ACTIVE_LOW>;
> > +     pinctrl-names =3D "default", "sleep";
> > +     pinctrl-0 =3D <&sdc2_default &sdc2_card_det_n>;
> > +     pinctrl-1 =3D <&sdc2_sleep &sdc2_card_det_n>;
> > +     vmmc-supply =3D <&vreg_l9b_2p9>;
> > +     vqmmc-supply =3D <&vreg_l8b_1p8>;
> > +     max-sd-hs-hz =3D <37500000>;
>
> It's already in 8550.dtsi, you can drop it

Ack

> > +     no-sdio;
> > +     no-mmc;
> > +
> > +     qcom,dll-config =3D <0x0007442c>;
>
> Is that changed in your downstream tree?

I honestly don't know. This existed in the mainline port dtsi mirrored
by the vendor and I picked it up as-is. I grepped the downstream
source release and I don't see anything named 'dll-config' in the
sm8550 dt at all, only in older soc's brought in by the kernel fork. I
know the fork I based on was chasing the issues with high speed sd
cards that seem to have been recently fixed upstream. Maybe this was
part of that. I can drop it given no one knows why it's here.

>
> [...]
>
> > +&swr1 {
> > +     status =3D "okay";
> > +     wcd_rx: codec@0,4 {
>
> Let's keep a \n between properties and the subsequent subnodes,
> also file-wide

Ack

> [...]
>
> > +&tlmm {
> > +     gpio-reserved-ranges =3D <32 8>;
> > +
> > +     dsi_p_rst_active: dsi-p-rst-active-state {
> > +             pins =3D "gpio133";
>
> https://docs.kernel.org/devicetree/bindings/dts-coding-style.html
>
> Let's order them by the pin index (it's a fairly new development so other
> 8550 devices don't really have that)

Ack

> [...]
>
> > +&usb_dp_qmpphy {
> > +     vdda-phy-supply =3D <&vreg_l3e_1p2>;
> > +     vdda-pll-supply =3D <&vreg_l3f_0p88>;
> > +
> > +     mode-switch;
>
> Already present in sm8550.dtsi

Ack

Aaron


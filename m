Return-Path: <devicetree+bounces-261402-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UD+6OM7GfWmBTgIAu9opvQ
	(envelope-from <devicetree+bounces-261402-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 10:09:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB27C152C
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 10:09:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 42753300D62C
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 09:09:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA6193093C1;
	Sat, 31 Jan 2026 09:09:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lyBRJPkF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B455284672
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 09:09:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769850567; cv=pass; b=XRF4iYEZsrih6UMK5AtFDWUAnytE9r4SPNrrU6QDxJ+KbEJjU3vE0jjaZ5d0LWHrmAEWgZaklvbHPWiJVBiSIU3GDjpUalUIG9MUZW3AX0rs7gnlQkkn7XbvnOwUha6Me7hjssi5sRCsruXvMqrh0QmdUKekIE1Ot1RiHElMCkY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769850567; c=relaxed/simple;
	bh=nCj1OAarCxZdxbUETmSh2uXCHGrkZqQoz13cAYyo4/Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=p7eHt5KnqencE7f0BExB1Ie/4orgqBPaJpkZH7icJXEdSqbqdY83ifgM2umAggnBNgfAjxyNmCzhDRmSvOze5IcouzTJEznweX67nIx1GikrKC2pFaQzAd+fkbYa+UvcTjz9rJ5YG4JIsBdNvAm/K5ByxAfxWBpJM/AjAOO0IEQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lyBRJPkF; arc=pass smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-59de66fdb53so2615756e87.2
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 01:09:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769850564; cv=none;
        d=google.com; s=arc-20240605;
        b=GGXhyx0UaLDbuZR8guwvDCsO3rHZGUOiq3HYnuYO7HJ0M3doH/ll87JwcYlkg0+BYu
         TZuNTWgqjguf3rr2X5VrulSxcva7Q/q/USycE9wpnw3afArh5H4tpZYvQoN1+MmgPkQy
         DtZiyXkPpOMD2MvDc39u/md69VwwZljLv3hJ9lJKG8SJ+vSWTKqSz4PaHhf30eU8h7u/
         EkUVJESAt+oEQz+NhOcb9luYqAxinBg+XLln4jrHylqeMQ8zy5jUes05w/N5g9ArpE94
         k/EGa+dsvQMdHgeejHE2S8XK3BDMj7gypK6BL8A91JzXPfdVqulKHMRAL+RAzLBL1egY
         n3yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ErL27rQjlumXcD5kCcCQtYknf95rNMXp3vNt9xcdPgs=;
        fh=hryuOV0Q8fBz2V1uNCj8BQW0ERvIZ8II8HOmpHu3J/o=;
        b=OW//bgm6AiX82yRctRbNm+fR9dEYm+2rDoISU1RJbkezSJEh07SP9sxauoRoPv8aYV
         uLefUqDUFGSyblD0CD5Fvkfb3cP/gjcSW4LRk1tspbfEKFCrv3qicX+CY/p/2Ar1ZE9O
         o90PpIPPbX0rcJurBis3XdEIE2POftFZJ5j0aWcPNFg16mQocGj3J13AEhSMqPWm2ps1
         TXZwkY5wPgyEP+XTTjXNYyl2VmlShLouRArrGE3ta3IgU2fXaZe4DKn8qkGpLFftmLzb
         YVDCT6LnptUQM9+5P4VVA9dBWMGfmzssbNiU0sdpy9Vpy82WwFvxl/5rKAN5scDamumD
         FMWQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769850564; x=1770455364; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ErL27rQjlumXcD5kCcCQtYknf95rNMXp3vNt9xcdPgs=;
        b=lyBRJPkFZk48v5W0uOrCpqtF/IxFeZ3kEd3ahcojfCGECAJWTr8I96gtS30oe1i9uh
         Eiw14qIyyycJ/MrIaj1rM1fjylEmK/faTwPzupc2wygvbsn7gR3UyQcMpUmXC4wsph/V
         rGorPL89Iicz0Mm5Ogr6hGjtE3edxR5YMnqO8IEBhBKM8JnDOOaONGmIne9clD9HAc3d
         qcgeao5L9gFMRXKuMQhf26b8ORc1kK+uwPdnoBY0003R6+ilv2jQ/HFf+6Mb3nf+oGCE
         GbnHe6pGf4GVkgDYYYY98sg0KN/p4UFyas+KABTVxygMaEFlD0K0cBA36zh9mvNZXwTp
         08Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769850564; x=1770455364;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ErL27rQjlumXcD5kCcCQtYknf95rNMXp3vNt9xcdPgs=;
        b=WG8JHNm/WG+HoovSRPFlWhQNgl+TvkMoXZ300PihStHH+95fUQZuG5iSV2o+DuXEMt
         fdQ/deTPJZq4VidBDwzTEwvs7wqpvXuw4x7PQ0w8GuITBnLlxfd3bg0U5nwWG0Lwsilx
         2QO6XQcVtP7l1tKR/9Mk0QG0Fbnw79qxzEshLG+2+i2/yx/YOUAW4QWoWw/v+UZHrqkR
         LiTOHwX+lY9IG0pzNxKy2PVnEr5/zLqRgo4QaqlrBmiVmmVgRmpCrMJCeBsN85Tj96ZE
         WjjjQq7JOr79SWAjmDcmALz7zgRuA4wjlCAcDh8BvPLe6/1U3Qpqb6rtv3SgXejPObOd
         mdDg==
X-Forwarded-Encrypted: i=1; AJvYcCWCxnAFs7cyOYs6iJvxnPv0CSzfRtX9TA75lI1eNoiuTWEvsuPSYRnSOKXza1oUOn1y6IzHkPs47lPI@vger.kernel.org
X-Gm-Message-State: AOJu0YxdZ0kTFypFDWVEA6DKjPPlm7/FiEt64EHjCGZNJ2I8NpsVhnzp
	AUBQBrQylFUKOPhmnP6fMjDpVtoU32+U7vtlLCvF6Q1F4Kxlk42FR9LLLpV5dKPA8ryWhToc8FV
	Pkcjt6Ehw1X4KpitzA2Ayp05My8m0CvY=
X-Gm-Gg: AZuq6aJQ7E4Y6+woo6duKOqzjfl7Ogaxb7GSDsYZhOALxb68wf9mqYbAhriHS3Yi85a
	81GpS5Xs5ZJuQ0Tz/Ygn5arz9UFYOodL16I/SdwxSTBOOYZYqc6VkH8GFFSxDN1P4KFs4k1PH2E
	fZyltRwqF8zwflolT+yiX5S8XEndmDEYngIQ1DHtceuURrW+MjTfHrNDGPW7zGdSORJXa6n53Kp
	ncrlx0vmbiXSXuo6ckQ44AyUt48lB6r9cDboZTRmkXKwiU4mKyIMgGouXKenQgHuxWQSHBP1QhL
	uBlbl2e6bAAvfn5GSg8i5k/78MU5r/5ATbBQoDEB+AD36wEUEdOJxwlJ
X-Received: by 2002:a05:6512:b0f:b0:59d:ec9f:b663 with SMTP id
 2adb3069b0e04-59e16402044mr2083187e87.18.1769850564010; Sat, 31 Jan 2026
 01:09:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260129-sm8550-abl-dtbo-v1-0-abca3be14024@gmail.com>
 <20260129-sm8550-abl-dtbo-v1-3-abca3be14024@gmail.com> <7d473eubnez5gcbou6mguomeetpotp73q7cjol3kfjlg7pz5r3@yjsh4rd4mwbv>
In-Reply-To: <7d473eubnez5gcbou6mguomeetpotp73q7cjol3kfjlg7pz5r3@yjsh4rd4mwbv>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Sat, 31 Jan 2026 03:09:12 -0600
X-Gm-Features: AZwV_QhI2wslJSs6FGb4rEwUKvBqr5b8LTNl4MaeH_JhV7NT8HJXuEbe8azVqlY
Message-ID: <CALHNRZ80+KAfm2YHEoodBv_7jDZPZjtr-koo7q_N+aX+i1OfnA@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm8550: Fix DTBO boot failure
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kumar Sharma <quic_vksharma@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-261402-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[webgeek1234@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4EB27C152C
X-Rspamd-Action: no action

On Sat, Jan 31, 2026 at 1:47=E2=80=AFAM Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:
>
> On Thu, Jan 29, 2026 at 01:46:32AM -0600, Aaron Kling via B4 Relay wrote:
> > From: Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>
> >
> > ABL requires certain things in the base dtb to apply a dtbo. Namely:
> >
> > * The scm node must be named qcom_scm
> > * The timer node must have a label named arch_timer
> >
> > This aligns the sm8550 soc dtsi with those requirements. Without these
> > in the base dtb, when ABL attempts to apply any dtbo, it will fail to
> > the bootloader menu.
> >
> > Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
>
> Did Pavan provide an SoB to the patch?

No. The change comes from the gunyah watchdog discussion here [0].

>
> > ---
> >  arch/arm64/boot/dts/qcom/sm8550.dtsi | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts=
/qcom/sm8550.dtsi
> > index 740e3c238e8ed0f162dd168291f6e307ace66e80..d7cc20e1931904e7c603b80=
0089f00955ecec3b7 100644
> > --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> > @@ -329,7 +329,7 @@ cluster_sleep_1: cluster-sleep-1 {
> >       };
> >
> >       firmware {
> > -             scm: scm {
> > +             scm: qcom_scm {
>
> This one is a definite no-go. Device nodes can't use underscores in
> names. It has been told to Qualcomm for ages. If we didn't comply, it
> doesn't give us a permission to break the rules.

I have not been able to make ABL load a dtbo without this change so
far, though I have had a suggestion from off list that I may need to
try a different method of flashing changes. I have not yet had time to
do so yet, however. Given this list came from a Qualcomm employee and
worked as advertised, my tendency is to believe that it is the minimal
required.

The devices I am working on are not fused and thus I do have the
capability to use a custom ABL with fixes. However, doing so would
make the user transition from the stock os to a custom one more
complicated. Plus this affects many devices that are fused and thus do
not have such an option.

In the likely case that the bootloader dtbo functionality does indeed
require this change, and the mainline kernel cannot accept it, then
what are the options? My use case involves using out of tree dtbs that
include the mainline dtsi's. I could do a delete-node on scm and add
it back as qcom_scm, but I would very highly prefer not to. The less
downstream changes I have to carry, the less work I need to do to keep
up to date. And on the other side, getting android vendors to update
their ABL seems extremely unlikely.

>
> >                       compatible =3D "qcom,scm-sm8550", "qcom,scm";
> >                       qcom,dload-mode =3D <&tcsr 0x19000>;
> >                       interconnects =3D <&aggre2_noc MASTER_CRYPTO QCOM=
_ICC_TAG_ALWAYS
> > @@ -6764,7 +6764,7 @@ trip-point2 {
> >               };
> >       };
> >
> > -     timer {
> > +     arch_timer: timer {
>
> Please add a comment, otherwise somebody might decide to drop the unused
> label.

Ack.

Aaron

[0] https://lore.kernel.org/all/91002189-9d9e-48a2-8424-c42705fed3f8@quicin=
c.com/


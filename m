Return-Path: <devicetree+bounces-262820-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6EcMCrneg2mavAMAu9opvQ
	(envelope-from <devicetree+bounces-262820-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 01:05:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7D9ED627
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 01:05:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3D847300FEC6
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 00:05:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8C4D4A0C;
	Thu,  5 Feb 2026 00:05:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f49.google.com (mail-yx1-f49.google.com [74.125.224.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B01A3C2F
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 00:05:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770249910; cv=none; b=itz2brCaFcIooNK5khOL45wJQyY8BHHbcagtuyuayXQvJEvir2zhN4doKB7R+i8H+dlceqxlQCjcL5fv8OFUNC9P9/fObwmQw/aor2chRtl20m4wxTUS4Yg5hT2FioyhoeioV4iTaTIUcaUeQ0fy85JM0eQDkJFGlbiARoIRGgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770249910; c=relaxed/simple;
	bh=38GiAMYdVr+nGbtG6jDAXZ8xhyIPj3PSQc+qTZmWAms=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IriOymgaogYp4yMeshPRFVFvOVjJ39xWQQGK4Ql0wv4gUMsX+S4aJuGHaNib6QfbjizblSWqxF0QmXU2dCXJzo04qVz9WQ4Q4CLkFIjYaWHtiZoiw3V//cOJedVAacNFix85OJFRhr6JDkFGs4YzFgTqO6cXX4xeGzpmnwd8/3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=74.125.224.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f49.google.com with SMTP id 956f58d0204a3-649278a69c5so256562d50.3
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 16:05:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770249909; x=1770854709;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cUOi1AuMPbd2QKGr71XPO3ga4rTQ/23knU8iQQkMDSs=;
        b=mmx2xkH6fFj0WzIkG54xqHH7CMQ7196dCQMt/SEX+E4I4/yQQeNLzZRQ9gQCJOIIOy
         1jah8OXnAmgkm02VLk5bddsP8i5XIPrxHOEsbzUGCCDiLvJUAEmf3lplgTVF9t4nL3/s
         e7DXfQlSr1rz4Xz/9t10Kb/XPvqOBYnwOZwzXEITjXS3Tl+eGLh4XnVqwgQIiF8X+a3R
         lp5fIw42fuWpHeOSota/XfN3aDa2g1UTrrUoF5KficQcmq3Ek4cCEyCOhRfZpvF4y/jy
         CH+Wwi3+/4e/mDpJsPNruel9AcG+6UGnewF1xQzLlbfJ2212Js7P0owo7AsrlUv1Zp6n
         iwFg==
X-Forwarded-Encrypted: i=1; AJvYcCXIt9YilSL0j+BFKx/GA/B4k6L652iLSyghPA7QprydQvL6/msUBa7g0S6wdoTLha0H8ILwya8xigcg@vger.kernel.org
X-Gm-Message-State: AOJu0YwBaqWP5kM7B5biPo4skRsnhL2X2onvOTEpoTMLuU4Jqf/G0piT
	qf3tM8AkDU5ZN4w5VWfu186P9IxDresgs904pUBzty3QqKz0GQCKzf74KJ/7/A==
X-Gm-Gg: AZuq6aJRb3KGZkGw6mviQaVRas0tI4hfegqu6diZ2bGFLrgSzoD65DeYcORfE0jlAPo
	Em35ceWA9xbmlczCoS4OhN3ux1ADNsHJmh5vad/BNjadFl6UDHk91sXS56xWzPMf243n6mJk4PI
	y+Ue1wvcqNXVSxRO11e4RvNMuTrfKVeW9M2JSB4Y1tt49JwPvfLqAqqEkq7tnnCbsf4QoZGtbYz
	m0W+HObZcfff92H3YL2IzvPvyJ5BLdo5XJlZ3+aGmVssICxioogcXbDqeuzA4/IDoXc9hudXiff
	xZUPYk/avaC1gj51D5Py7qS0j2T5jfN63iHFP15lfsgxWizSUr5fqk3TVgrT7UUZxBoYLlVth0q
	OiZ0TVR8sWL6s90LD5O0SyvTxqIpcVy8+31YS+tNwrLf5p4t9qAEM/h2t6jT2+p+BQsT5VQ0bJD
	mVlkoFZTzUmLRxpSGdYK50/pJm765ZTBfJ2AYsGq56Bw==
X-Received: by 2002:a05:690e:408e:b0:646:6f6f:65e with SMTP id 956f58d0204a3-649db33a748mr4311436d50.24.1770249909414;
        Wed, 04 Feb 2026 16:05:09 -0800 (PST)
Received: from mail-yx1-f52.google.com (mail-yx1-f52.google.com. [74.125.224.52])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-649dc49521asm3791799d50.3.2026.02.04.16.05.08
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Feb 2026 16:05:09 -0800 (PST)
Received: by mail-yx1-f52.google.com with SMTP id 956f58d0204a3-649e456e7a8so333401d50.2
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 16:05:08 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUztHaDUi0on4XnzFjpzVYrym4tRv5Mqd/StCDqcov2FI0GyMrZSIacYiZXpbVWiO8PYMH8o61NIpFa@vger.kernel.org
X-Received: by 2002:a05:690e:1444:b0:649:e871:3eb7 with SMTP id
 956f58d0204a3-649e8715351mr1098048d50.57.1770249908545; Wed, 04 Feb 2026
 16:05:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <6cd569ad19ae8efb5f4244b3aa185754@gmail.com> <eb9c1489-4496-48b3-8709-739cd45c11b0@oss.qualcomm.com>
In-Reply-To: <eb9c1489-4496-48b3-8709-739cd45c11b0@oss.qualcomm.com>
From: Roger Shimizu <rosh@debian.org>
Date: Wed, 4 Feb 2026 16:04:56 -0800
X-Gmail-Original-Message-ID: <CAEQ9gEkH8mJu+kwghbFFwNi9RfbQ6CzykoYVJqa6YAL-74SaKQ@mail.gmail.com>
X-Gm-Features: AZwV_Qi6zlrFFq0wP4iqsXvOg0ApIo-83ugjHs9tKTWoCfhXpK-5a65UO_LLSFQ
Message-ID: <CAEQ9gEkH8mJu+kwghbFFwNi9RfbQ6CzykoYVJqa6YAL-74SaKQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490: Add Thundercomm AI Mini PC G1 IoT
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262820-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[debian.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosh@debian.org,devicetree@vger.kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.990];
	RCPT_COUNT_SEVEN(0.00)[9];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,qualcomm.com:email]
X-Rspamd-Queue-Id: 7E7D9ED627
X-Rspamd-Action: no action

Thanks Konrad for the review!

On Wed, Feb 4, 2026 at 1:21=E2=80=AFAM Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 1/31/26 11:31 AM, Roger Shimizu wrote:
> > Thundercomm AI MiniPC G1 IoT is single board computer with
> > AI capability based on Qualcomm QCS6490 platform.
> >
> > This device tree is confirmed to work as below:
> > - GPU
> > - HDMI output port
> > - PCIe M.2 port (for external Wi-Fi or 5G connectivity)
> > - UART / serial console port
> > - UFS
> > - USB Type-C port, with Display Port
> >
> > Signed-off-by: Roger Shimizu <rosh@debian.org>
> > ---
>
> [...]
>
> > +/ {
> > +     model =3D "Thundercomm AI Mini PC G1 IoT";
> > +     compatible =3D "qcom,sc7280", "qcom,qcm6490";
>
> You need to add a board-specific compatible here, see:
>
> Documentation/devicetree/bindings/arm/qcom.yaml

Thanks for the hint!
I'll add it in v2 series.

> > +     chassis-type =3D "embedded";
>
> The allowed values are:
>
>     enum:
>       - desktop
>       - laptop
>       - convertible
>       - server
>       - all-in-one
>       - tablet
>       - handset
>       - watch
>       - embedded
>       - television
>       - spectacles
>
> I think it's more of a desktop, but a) that's minor and b) you could
> argue either way

The device name indicates it's Mini PC, so desktop is better.

> [...]
>
> > +             vreg_s1b_1p872: smps1 {
> > +                     regulator-name =3D "vreg_s1b_1p872";
> > +                     regulator-min-microvolt =3D <1840000>;
> > +                     regulator-max-microvolt =3D <2040000>;
>
> Have you cross-checked the regulator settings against the original
> vendor-provided sw?

No. Those are from RB3 Gen2. So far there's no issue.
If there's an issue, we can fix it later.

> [...]
>
> > +&gpu_zap_shader {
> > +     firmware-name =3D "qcom/qcs6490/a660_zap.mbn";
>
> I'm assuming this means the thing can take Qualcomm- (vs OEM-)signed firm=
ware
> Could you please confirm that's the case?

Yes, so far I don't find issue by using gpu firmware from this path.

> [...]
>
> > +&pon_pwrkey {
> > +     status =3D "okay";
> > +};
>
> This one is already enabled

May I know where it's enabled?
From my search, pon_pwrkey is defined in:
arch/arm64/boot/dts/qcom/pmk8350.dtsi, which is disabled.

-Roger


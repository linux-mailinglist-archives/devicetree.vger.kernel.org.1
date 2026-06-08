Return-Path: <devicetree+bounces-308051-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ll7VFL1tJmqMWQIAu9opvQ
	(envelope-from <devicetree+bounces-308051-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 09:22:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id EA14F6537EC
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 09:22:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=fairphone.com header.s=fair header.b=lmkk+bbg;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308051-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-308051-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=fairphone.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 64E6830058F2
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 07:22:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7065138D401;
	Mon,  8 Jun 2026 07:22:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D33FD31A813
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 07:22:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780903355; cv=none; b=fgGt2EiI6q0KQFeMZrr8zILwyFQ3mWd/ZJc17soHiLtCcvMRGWabfQjH0/NJft+1a4XfaG/jHwgpr89TNmKbzWAMr8XY49DZeRc6VF6q2hH+fTE0qZ3rNzgC6u6FddPDq9gtBFs2mYcWzHoiNkVMa/Re9fz0fx9xo3Kx8w4Sd/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780903355; c=relaxed/simple;
	bh=wzQNdlmjd688BGImntQtEQI1p7VVOPGkO76LyuxhkkQ=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=UijhIe1hcrUqbO2vkbEn/kEnd4N40+ARU9GYl5bLWxp1CGAECNsj9ocqZ7uBRc5uIJ4xi/q7DCxYwLLTlFsCTaFyYLyfKj7Sq7oa9BlQoCB0XxEF4F5nJ08Ka4h7B/Hasp5dI8crkj8IgFK52GMRHN0uOWbmZsYLwx6tyDdpmL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=lmkk+bbg; arc=none smtp.client-ip=209.85.218.50
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-bebde89cfd3so487071766b.2
        for <devicetree@vger.kernel.org>; Mon, 08 Jun 2026 00:22:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1780903352; x=1781508152; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u2Y0KW7oVfaQM+1Q8839F5FmCJcIAYyj3m03V5keb/Y=;
        b=lmkk+bbghZAUFFEeUTEc9xxKYh06JgUD34/92WTWO9+p75I9SZkyZucchNqDy6TiZE
         JQ2YdEIatmlO7qjFADE0Lws4uAceqAA0A1HdMZ3lJ3bflmGKjzJfxBIuyD5Fhnaf+Vkb
         6mOM9FUNIorI4UEffhJjgJ7bNPq9SiZvaZVEHOSWuzYcT2FyU3K9l/x95jEcgeDmlGfm
         Q0j0digtQ0eXlHlr04RD31STX+pZRqxnvgSqV13uDHNlsiFU4LTMOoSnKrOv0kBFT5hT
         k8eWruvTnZekI333Zz4Ye91wFBfOcFzhZfexq9okRxHPZ8FgskaNLCXiCiIC95/HGC2a
         VlgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780903352; x=1781508152;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u2Y0KW7oVfaQM+1Q8839F5FmCJcIAYyj3m03V5keb/Y=;
        b=eaNrY6pmekAvAMKiFZveltdzuQYdqVRtxsimxLsFHLQCJF5azJ+U1V9qkH/wJLx9JC
         TQvSE5oUOjnu57PhsT+TaTthPRakXp1FHCXPCfa3Anq74QTpRL901f9tGcHzUJ3+Ddht
         w/0+Q/njGub5owilUUHYdONZOrssHX3dpwlZ8z5O9VlcyPOi+PsuS6Gct5nIM6XJ7kdO
         KVUqek0zV8qmXBebQQ/z9iktha7kAFQXx4pKM6YP5nQgQ0LG7yublgo/5O4MbpH4/eaq
         UnGRuOf4nD5c1nP9mU5unfT6Tw2JPqcVOvz4mlEkByNlgcLsv46+bKZIHM2z6zNLDn3c
         4AlQ==
X-Forwarded-Encrypted: i=1; AFNElJ9qNsp4ObzdYXNVhBWeKEJ40sCj/KJhiw8oQASjJW/tBTyQmKwOSaAET+Fz3yUZe3uteg9Qi2CiZp0O@vger.kernel.org
X-Gm-Message-State: AOJu0Ywono0nnt17EsV8CWf7o7JJaqYyhHjZMzvKUBZbwI8z4v1ArNJx
	oPlY7uTB4hdu0YXwKtFqAS77OuPVOb3Rv+graE+yYcRiu15In0Fh7SXmAg67HYEVhGm+kkeQL5H
	jyrguTnU=
X-Gm-Gg: Acq92OHNlY22bJ/6JlygbolZLu3hwkStNuK8OaDaicUt02iskmoXwW9YyqtyJIIzTRQ
	G/2utTno0Bk5TF9IkyLpl7F4guLjMvhDiGxrxf/6A1m9vfC6sY9jBUO7q0n7XoSynzpqQDW+/bg
	ZVGM7/BAWZ5PxsLdgGFi/X06bO1gruU3uthqDPt6kiEVbZ0xBb+jSnqNySd52RtvuRO1/W1bjgL
	HkUa8iZpVML1VdEzi5zEqlGU1ovC1YqeJgSa0/6F7awYX50MVq4D1Sh5zA+tr895N5cErjwDOdn
	XzWpTBW2CkYNYxxzjq5NFjs6zylR9sASrDAuO+8Owd2SWrLNnxiybnqzyAxZZegXLuxA4tfbJEx
	EebPgrehtNHcsgJxpxsU+kEGzbmSKReT3TAE00SNQBSPPXimkrazA4djxHz4hDC8mMl8lYDwPBe
	XIegszK8A2A38cKiMM2vhqBBf5fBpkpja7bFgg68KOfndhRLS+agL9KeG1dKGzWE9vFO5l2vC4q
	whYxa4=
X-Received: by 2002:a17:907:2718:b0:bea:f4e0:c7b9 with SMTP id a640c23a62f3a-bf370d638ccmr493709066b.19.1780903349716;
        Mon, 08 Jun 2026 00:22:29 -0700 (PDT)
Received: from localhost (144-178-202-142.static.ef-service.nl. [144.178.202.142])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bf05176fd20sm838285766b.7.2026.06.08.00.22.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jun 2026 00:22:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 08 Jun 2026 09:22:28 +0200
Message-Id: <DJ3HJRYX3CJG.JURHJ0YAMA4W@fairphone.com>
Cc: "Ajit Pandey" <ajit.pandey@oss.qualcomm.com>, "Imran Shaik"
 <imran.shaik@oss.qualcomm.com>, "Jagadeesh Kona"
 <jagadeesh.kona@oss.qualcomm.com>, <linux-arm-msm@vger.kernel.org>,
 <linux-clk@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-gpio@vger.kernel.org>,
 <netdev@vger.kernel.org>
Subject: Re: [PATCH 4/5] arm64: dts: qcom: Add gp_mn pin state for GP M/N
 clock output
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Taniya Das" <taniya.das@oss.qualcomm.com>, "Bjorn Andersson"
 <andersson@kernel.org>, "Michael Turquette" <mturquette@baylibre.com>,
 "Stephen Boyd" <sboyd@kernel.org>, "Brian Masney" <bmasney@redhat.com>,
 "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Linus Walleij"
 <linusw@kernel.org>, "Richard Cochran" <richardcochran@gmail.com>, "Konrad
 Dybcio" <konradybcio@kernel.org>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260602-pdm_clk_gp_mnd_v1-v1-0-1522662b6c53@oss.qualcomm.com>
 <20260602-pdm_clk_gp_mnd_v1-v1-4-1522662b6c53@oss.qualcomm.com>
In-Reply-To: <20260602-pdm_clk_gp_mnd_v1-v1-4-1522662b6c53@oss.qualcomm.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-308051-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:ajit.pandey@oss.qualcomm.com,m:imran.shaik@oss.qualcomm.com,m:jagadeesh.kona@oss.qualcomm.com,m:linux-arm-msm@vger.kernel.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-gpio@vger.kernel.org,m:netdev@vger.kernel.org,m:taniya.das@oss.qualcomm.com,m:andersson@kernel.org,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linusw@kernel.org,m:richardcochran@gmail.com,m:konradybcio@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,baylibre.com,redhat.com,gmail.com];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[fairphone.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,fairphone.com:mid,fairphone.com:from_mime,fairphone.com:dkim,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EA14F6537EC

On Tue Jun 2, 2026 at 5:21 PM CEST, Taniya Das wrote:
> Add pinctrl states for the GP M/N divider clock output pin across
> multiple Qualcomm SoCs:
>
>   wire it to the GP M/N clock controller node via pinctrl-0.
> - kodiak (sa8775p): Add gp_mn_active state on gpio35 (gp_mn function).

kodiak (sc7280) - this should be gpio60?

> - lemans (sa8775p): Add gp_mn_active state on gpio35 (gp_mn function).
> - monaco (qcs8300): Add gp_mn_active state on gpio32 (gp_mn function).
>
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/kodiak.dtsi | 7 +++++++
>  arch/arm64/boot/dts/qcom/lemans.dtsi | 7 +++++++
>  arch/arm64/boot/dts/qcom/monaco.dtsi | 7 +++++++
>  3 files changed, 21 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/kodiak.dtsi b/arch/arm64/boot/dts/q=
com/kodiak.dtsi
> index fa540d8c2615dc02d941eb16bc7253204c2750bd..1ff9e1598d00429c03b2bcae4=
1fa370ab2c892bd 100644
> --- a/arch/arm64/boot/dts/qcom/kodiak.dtsi
> +++ b/arch/arm64/boot/dts/qcom/kodiak.dtsi
> @@ -5908,6 +5908,13 @@ edp_hot_plug_det: edp-hot-plug-det-state {
>  				function =3D "edp_hot";
>  			};
> =20
> +			gp_mn_active: gp_mn_active-state {
> +				pins =3D "gpio35";

gpio60?

I still find it incredible that the QCM6490 datasheet (80-20659-1 Rev.
AJ) doesn't even mention this functionality on GPIO_60.. I wonder what
else is hidden on these SoCs.

Regards
Luca

> +				function =3D "gp_mn";
> +				drive-strength =3D <2>;
> +				bias-disable;
> +			};
> +
>  			mi2s0_data0: mi2s0-data0-state {
>  				pins =3D "gpio98";
>  				function =3D "mi2s0_data0";
> diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/q=
com/lemans.dtsi
> index 353a6e6fd3acb22ef228bee340212b8b2c300957..19f8cf4e15482947f60491880=
50c370340afaead 100644
> --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
> +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
> @@ -6022,6 +6022,13 @@ dp1_hot_plug_det: dp1-hot-plug-det-state {
>  				bias-disable;
>  			};
> =20
> +			gp_mn_active: gp_mn_active-state {
> +				pins =3D "gpio35";
> +				function =3D "gp_mn";
> +				drive-strength =3D <2>;
> +				bias-disable;
> +			};
> +
>  			hs0_mi2s_active: hs0-mi2s-active-state {
>  				pins =3D "gpio114", "gpio115", "gpio116", "gpio117";
>  				function =3D "hs0_mi2s";
> diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/q=
com/monaco.dtsi
> index e4c8466f941bdba04f99b988fd7bf5afd926b31d..ebe5889daa5300efa7857314e=
9170d7d2fc33ef7 100644
> --- a/arch/arm64/boot/dts/qcom/monaco.dtsi
> +++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
> @@ -6433,6 +6433,13 @@ dp_hot_plug_det: dp-hot-plug-det-state {
>  				bias-disable;
>  			};
> =20
> +			gp_mn_active: gp_mn_active-state {
> +				pins =3D "gpio32";
> +				function =3D "gp_mn";
> +				drive-strength =3D <2>;
> +				bias-disable;
> +			};
> +
>  			hs0_mi2s_active: hs0-mi2s-active-state {
>  				pins =3D "gpio106", "gpio107", "gpio108", "gpio109";
>  				function =3D "hs0_mi2s";



Return-Path: <devicetree+bounces-270732-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gCXdCfk3p2mofwAAu9opvQ
	(envelope-from <devicetree+bounces-270732-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 20:35:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BFFF11F619B
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 20:35:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 825FB3052DA9
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 19:33:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE00C384240;
	Tue,  3 Mar 2026 19:32:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="piDfAe8I";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cbvcgHIT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E933379EF1
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 19:32:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=205.220.168.131
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772566371; cv=pass; b=mGQkLrUJVKD5vgEsR5bQKidjJzIA3mBbfB8BXLXocegoaw8gsqO4EvWB257NHDApbd9bAUfD2G0YlM+o8LRjmBxLoVtDWlop95bwoTvPbfyDSSsB5qNG9gszOMU06KNjgNFms6mjaHwDrQLcQ+CoIE6vSfjQuj5I9aI84SDr77U=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772566371; c=relaxed/simple;
	bh=7AK1pyLHLL3gTtmN6X6YjP0cGlFP4sLHUU2lOw0LQd0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Deyp/kxdfIMDNqmjIZHkq7V6/ac4FU80mXOKCEKZYPZv0IGGyeOryg4czeQHCTvgvHqo3379kp23QFqr9fqWE5arEprJDRAI7di8mZFiSx998xIaNCrpGITTugo8Z9QUggxCj2tfTxrLU5hss16RAZRpoI+xMhjen1JjksvTP3A=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=piDfAe8I; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cbvcgHIT; arc=pass smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 623H0SIr3669966
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 19:32:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	l/sKbzz2qcVfK+ur51YchJlqId9Y529cHJnlOU3hgQw=; b=piDfAe8ImwG81GQh
	XYyTWF8ULuoUQmmRjCoMUJQykFxVKQ4xcG+oQuQhqDFbePctBAmcqMbkBzRLYjec
	g3xJlFuQ7frUXlnuDR0jjtCHY49xQcmCuG9eUU3PJU5izX4JLHlXMj3SfEdj7yIV
	+iYHQV9gWL8AS0FCaGPDE5WpGvW3ZpVSO22fWLquuEdRbcj6TPsc1fPPlA4ExoX5
	JJwFSv+dM2wBb0aayIV1uzCbxZ1BT/EmJxrcDvyefzm8N2/PsP9ngyWy3mAwAF2X
	XwKJkWNVi59iRej50WqZO96sN/JjtvsacCtciuNAnFLV8Jhx/1/CBBVQe7U30O+O
	4hq3BQ==
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com [209.85.161.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnswe2pj2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 19:32:49 +0000 (GMT)
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-679dcf1f680so133799875eaf.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 11:32:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772566369; cv=none;
        d=google.com; s=arc-20240605;
        b=RVHMUr88MG34DzC65n01uRLxhx8DTdRNYtjxZx2sS1bYHbFTqXTo3OK6pVj8BNSHCz
         +4Sv2uASe0sFymbVEW+G5f9f+hWrbbZOBKKv7kR1IR/NQJKDBv4ZCEeBL8oSFg7qzHeD
         mOrX0y8LKqWD6A9qBZ/fI0xsyKuV5uj7JZKWlSCEf7aJiWkKGLUgTSI2UB4VAe8jP0sK
         Wb+o2oEUJkPwdjEI0rc/5EUqwXIbCOWG73AociMKUauGfTZrHm/VDttZ6z3zNM/5gcJW
         3Jl/yO9gxADD6J3zt1jqma3WewcAm+CsfeLNRy7Nh/pWvsDtVd73xAPnzUAn5DyZgmfd
         lBfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=l/sKbzz2qcVfK+ur51YchJlqId9Y529cHJnlOU3hgQw=;
        fh=T7kJX+i9NXlkZuI4iiWwbgDose7sL61ONp5FlxTHVf0=;
        b=LkNt29UWHNC3O6XbSjT/0+0s+noXQMfIC0/qBy4MfWbtoK9TJPR/HvkLTlia4rpKSP
         3HolCdpLX4ovxG9h6zLdT9HYSRv2RHGsDb6HI/z9unCt4VVXn/r2Ho4lqqD0WyoU8CcW
         EcG+nAc9HKyTKhE5PCCmHPc4O/ma2vFUvEUi558gge4rj3gB7lhu4ir7Fc9TYLCc1BEF
         q5Fbtj0zgYZOvAtHxo11pF+tzU0XCrpr9C3UsQ3shT0+ON6//BW5rdfH+SUEta7L65pU
         KP8TDUhLQOrg0zCgRZpX/uXdJsA9qCeix9lpPo30n9a3Fv74z2tciGg0hZxSjX+ZXbX2
         OvHw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772566369; x=1773171169; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l/sKbzz2qcVfK+ur51YchJlqId9Y529cHJnlOU3hgQw=;
        b=cbvcgHITC9xy6ANt4Il3BYfIXZdu6FxunkHZD6hucyjOLToS7VxvZhd/NzBBjP5FJT
         eqBkiM/2AmpG1NZ0NFOSkWP6rC5fkCXGWvM2TjWEqRIhJwtfustBlPfOn6yYrsNSv8ZK
         gLqnOvhpeqMm54MKJCCfjy/nEGwnkq5KUhzrDdsTtabOHGsPUCeTyDc3zYFjP0cvABbk
         QXwsT6haPsrLzfjwBDe8V78xiTmIAz7VP2CJPYSjYjml98JsGyyzCuDYUaKmNAAXd4gV
         iXB4vMFMdqMKkK6HVGfn5oqtwMaQJIcZYG0wPHUPlUhUfd4gBHMjnuKdq8cVm+pz0Hji
         G32w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772566369; x=1773171169;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=l/sKbzz2qcVfK+ur51YchJlqId9Y529cHJnlOU3hgQw=;
        b=SsKQfsBzkhraCJ6GBRvSDw0D/fFgLtlKjiUITO5YG8nHjS/vypBap6wqJSwy+qC57w
         oniqizRQ7MIvQu9cZLVp24fnCS4e447yTgrPP3g8RjPpHdqXS3Tn3mDAeTO4DW6OM9g6
         7+iuH2/S/IqlAv7mmB2ItdZ5QwB+9oBH2sTWWFFlgVN5Vzv57JqlbO3DN+ra/H/uvhGw
         lNG247SxzjUtstKT4sdK9+TPHgTC44VeO5uXyJN5q+A4xa7b3Ir+XNIJSwbIsbQK+bFF
         sOW4/Yx8EGwc1uxjvJp2/0Dq+MYRv33f5D0ejyaVMyUDJhgexu/JXStCzIrJcz583vnf
         JlIQ==
X-Forwarded-Encrypted: i=1; AJvYcCUHlXgf7TmC+48kFgV/PH31qoboZmL9d69dHnviRkZTHBKmUJ79TUS/ibqpw3YCFL3x5/KN+r+8U6h0@vger.kernel.org
X-Gm-Message-State: AOJu0YwXdgBFrGP1J0vKNauKmcMnRn2MwgcpwIoVAOxfndQDQfzN53KK
	HaBY6ezrlFBHaocnDpCLk78ouAL+QV9p3GFt7lEXiMSXtOwUwsDF2QzuXe9t8tXpjDSNIz4gmGa
	VSsuJGnC9o3V+tadpnAD3taBruV+tmsIzD0SYLomtO8R2zCj+E2+/Zb7rn8t8aH+z9uwPkG/ASq
	w5HKGVsLu7VIBiMuFVrjwH1JfD2ZfHZ9w9V7qpQtY=
X-Gm-Gg: ATEYQzxz3mIzhJJM/fUuOfbWd13nj6DkaEnlZ/9Z1muYK4OsXsi/DMD9hOZKcZKGgSQ
	EHstLnOj8PPv0YP5L7yjyVM1+D7IoXou+XDrgu5tieQiqrG2hUGF7NOnV7N7zvoQP5S+BI8Vt47
	RFQhGkAIet7OlXRyq3LsoZUSstoU7CY5IIbAeGy46mbqV8a7doydXIwHHppOFkRdUCWo2wS6vYN
	2kqJPAzEi/YCxVaVrRWMKIZh10LtMsIQE0FkaHn
X-Received: by 2002:a05:6820:3102:b0:679:9787:7c83 with SMTP id 006d021491bc7-679fadc2728mr10451665eaf.13.1772566369029;
        Tue, 03 Mar 2026 11:32:49 -0800 (PST)
X-Received: by 2002:a05:6820:3102:b0:679:9787:7c83 with SMTP id
 006d021491bc7-679fadc2728mr10451655eaf.13.1772566368639; Tue, 03 Mar 2026
 11:32:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260210155329.3044455-1-swati.agarwal@oss.qualcomm.com>
 <20260210155329.3044455-3-swati.agarwal@oss.qualcomm.com> <CAFEp6-1+t+672=Oh8nvjMAEJrV_sz2SMzh1WeDNowsVzdXu8LA@mail.gmail.com>
 <CAHz4bYsyZyWrC1t_osVDFrKDX7Wsc8mdcr6bMiigUDUnkOSQ9Q@mail.gmail.com>
In-Reply-To: <CAHz4bYsyZyWrC1t_osVDFrKDX7Wsc8mdcr6bMiigUDUnkOSQ9Q@mail.gmail.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Tue, 3 Mar 2026 20:32:36 +0100
X-Gm-Features: AaiRm525p68cTabSnL9tO3E_e_nQlFe2Kyo8J5YZPHb0UB2ogDZE4hdJHMGrYno
Message-ID: <CAFEp6-08BQZKGeW2P4WPqYq3V69um6QTnE5Gpd+cvT9D-zsj-A@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: monaco-evk: Enable the tertiary USB controller
To: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-ORIG-GUID: PVyDq0xG_5WAlRXh1Tyzx2mop7Pg0BFi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDE1OSBTYWx0ZWRfX8jVffvH3g5KG
 p98lYggwelX0EijqBHWYPYY+MecyhdqIr83gUFWYD2/065fqfFFWs3AWMSklFfp4XJLp+blwYh6
 RpyPiC71JPtTEE2xLbF6oKFU+8XfqyicEj0lUZOJATuR9R1kJ/5/yUMtkZfgYZn3MsO0OpCQzgR
 ZrMDGphEksmAepgAbayRfZalfaGqpe9bFmutdgJL5WxKpQO+qgtWGduA+It3DjQDchRjgzAzndL
 q/SUEHzS1fl7GCSj72mrbl2s8VFa3dB86TPWlcHb4NbMx6LjO/r0Fdl6vG02ZIxigG8MYWHHRAD
 5qgBadbMK+KHr+BJD/7pk7TgkG5/UBwja2ymUaC1wCufEWikbwwwt3gsLdPtCZygTmjNqh9HMq1
 OnjmmHlRYrgjmMLFqi3vXMJyXsP7zWYuq10C/yd3erehhZgyGk0C/1e7HKOvZx87I8E/iusmBcG
 62DuATfXO+7A8tx3HAw==
X-Authority-Analysis: v=2.4 cv=TtHrRTXh c=1 sm=1 tr=0 ts=69a73761 cx=c_pps
 a=lkkFf9KBb43tY3aOjL++dA==:117 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8 a=enV3taNz3QTN7q4eF6oA:9
 a=QEXdDO2ut3YA:10 a=k4UEASGLJojhI9HsvVT1:22
X-Proofpoint-GUID: PVyDq0xG_5WAlRXh1Tyzx2mop7Pg0BFi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-03_03,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 suspectscore=0 adultscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030159
X-Rspamd-Queue-Id: BFFF11F619B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270732-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[loic.poulain@oss.qualcomm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim]
X-Rspamd-Action: no action

On Tue, Mar 3, 2026 at 9:25=E2=80=AFAM Swati Agarwal
<swati.agarwal@oss.qualcomm.com> wrote:
>
> On Fri, Feb 13, 2026 at 4:15=E2=80=AFPM Loic Poulain
> <loic.poulain@oss.qualcomm.com> wrote:
> >
> > Hi Swati,
> >
> > On Tue, Feb 10, 2026 at 4:54=E2=80=AFPM Swati Agarwal
> > <swati.agarwal@oss.qualcomm.com> wrote:
> > >
> > > Enable the tertiary usb controller connected to micro usb port in OTG=
 mode
> > > on Monaco EVK platform.
> > >
> > > Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> > > ---
> > >  arch/arm64/boot/dts/qcom/monaco-evk.dts | 53 +++++++++++++++++++++++=
++
> > >  arch/arm64/boot/dts/qcom/monaco.dtsi    |  7 ++++
> > >  2 files changed, 60 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boo=
t/dts/qcom/monaco-evk.dts
> > > index 03af9bbcacc9..e6fc6f6a52e1 100644
> > > --- a/arch/arm64/boot/dts/qcom/monaco-evk.dts
> > > +++ b/arch/arm64/boot/dts/qcom/monaco-evk.dts
> > > @@ -27,6 +27,25 @@ chosen {
> > >                 stdout-path =3D "serial0:115200n8";
> > >         };
> > >
> > > +       connector-2 {
> > > +               compatible =3D "gpio-usb-b-connector", "usb-b-connect=
or";
> > > +               label =3D "micro-USB";
> > > +               type =3D "micro";
> > > +
> > > +               id-gpios =3D <&pmm8620au_0_gpios 9 GPIO_ACTIVE_HIGH>;
> > > +               vbus-gpios =3D <&expander6 7 GPIO_ACTIVE_HIGH>;
> > > +               vbus-supply =3D <&vbus_supply_regulator_2>;
> > > +
> > > +               pinctrl-names =3D "default";
> > > +               pinctrl-0 =3D <&usb2_id>;
> > > +
> > > +               port {
> > > +                       usb2_con_hs_ep: endpoint {
> > > +                               remote-endpoint =3D <&usb_2_dwc3_hs>;
> > > +                       };
> > > +               };
> > > +       };
> > > +
> > >         dmic: audio-codec-0 {
> > >                 compatible =3D "dmic-codec";
> > >                 #sound-dai-cells =3D <0>;
> > > @@ -77,6 +96,15 @@ platform {
> > >                         };
> > >                 };
> > >         };
> > > +
> > > +       vbus_supply_regulator_2: vbus-supply-regulator-2 {
> > > +               compatible =3D "regulator-fixed";
> > > +               regulator-name =3D "vbus_supply_2";
> > > +               gpio =3D <&pmm8650au_1_gpios 7 GPIO_ACTIVE_HIGH>;
> > > +               regulator-min-microvolt =3D <5000000>;
> > > +               regulator-max-microvolt =3D <5000000>;
> > > +               enable-active-high;
> > > +       };
> > >  };
> > >
> > >  &apps_rsc {
> > > @@ -484,6 +512,16 @@ &pcieport1 {
> > >         wake-gpios =3D <&tlmm 21 GPIO_ACTIVE_HIGH>;
> > >  };
> > >
> > > +&pmm8620au_0_gpios {
> > > +       usb2_id: usb2-id-state {
> > > +               pins =3D "gpio9";
> > > +               function =3D "normal";
> > > +               input-enable;
> > > +               bias-pull-up;
> > > +               power-source =3D <0>;
> > > +       };
> > > +};
> > > +
> > >  &qupv3_id_0 {
> > >         firmware-name =3D "qcom/qcs8300/qupv3fw.elf";
> > >         status =3D "okay";
> > > @@ -690,3 +728,18 @@ &usb_qmpphy {
> > >
> > >         status =3D "okay";
> > >  };
> > > +
> > > +&usb_2 {
> > > +       status =3D "okay";
> > > +};
> > > +
> > > +&usb_2_dwc3_hs {
> > > +       remote-endpoint =3D <&usb2_con_hs_ep>;
> > > +};
> > > +
> > > +&usb_2_hsphy {
> > > +       vdda-pll-supply =3D <&vreg_l7a>;
> > > +       vdda18-supply =3D <&vreg_l7c>;
> > > +       vdda33-supply =3D <&vreg_l9a>;
> > > +       status =3D "okay";
> > > +};
> >
> > I noticed that usb_2/hs doesn=E2=80=99t work properly unless refgen is
> > supplied. It may appear to work on your setup if another PHY or
> > subsystem enables refgen, either explicitly in software (e.g. DSI) or
> > indirectly, such as through DP, which might be voting for it behind
> > the scenes.
>
> Hi Loic,
>
> Are you facing issues with this patch set? or your patch set that was
> raised as below?

Both. I'm basically running Debian with kernel mainline and your
series, booting from eMMC.
Usb seems to enumerate a boot time but is then unusable.

# lsusb
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 001 Device 002: ID 0781:5580 SanDisk Corp. SDCZ80 Flash Drive
#  dd if=3D/dev/zero of=3D/dev/sda bs=3D1MB count=3D10
[  225.248307] xhci-hcd xhci-hcd.0.auto: xHCI host not responding to
stop endpoint command
[  225.290186] xhci-hcd xhci-hcd.0.auto: xHCI host controller not
responding, assume dead
[  225.298385] xhci-hcd xhci-hcd.0.auto: HC died; cleaning up
[  225.307748] usb 1-1: USB disconnect, device number 2

It starts to work if I add the following in the monaco-evk devicetree:
&refgen{
    regulator-always-on;
};

# dd if=3D/dev/zero of=3D/dev/sda bs=3D1MB count=3D10
10+0 records in
10+0 records out
10000000 bytes (10 MB, 9.5 MiB) copied, 0.7521 s, 13.3 MB/s
# No more USB errors...

Regards,
Loic


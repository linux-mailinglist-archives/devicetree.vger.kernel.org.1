Return-Path: <devicetree+bounces-265336-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kHLLBHwBj2kAHQEAu9opvQ
	(envelope-from <devicetree+bounces-265336-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 11:48:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 684981353F0
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 11:48:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 734BC30BA090
	for <lists+devicetree@lfdr.de>; Fri, 13 Feb 2026 10:45:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32E45355805;
	Fri, 13 Feb 2026 10:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A2Uxi6hE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dRkynYqV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CF702BE048
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 10:45:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=205.220.168.131
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770979547; cv=pass; b=Q1PLRFuVsQg8uJTD1AcIAhf7C8B78wVlsFyv4cetwRtU4ckiLVsxZDh0n9ue2eSa6VOOaPgWtAA7cm9ZSc6iGnQbM5XQ5caC524Cu4TauldRNnitumu7tM+QPq8gmz9zgNfg4ZZtm9xqAHrMbJ0NimawvXssppyeVpAD78fY4Xw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770979547; c=relaxed/simple;
	bh=VaIFWo/5AeL63ubChvk6dtQt79j3M4zCPFEGLmI0GLI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FmM9yvCjQ2HAw7EntrkELcJwYlw8evJEZfzWgvaQnNe3CqVaScq/GnMg/0yy+lHaYD5q73TgAy6qtp+DwqfUT0yHS1N9vuOeEUfJiSj3QySaHm/opm2iMmxQkqjJkBAlSMmTHJotx10Gpkdh971fJ/TLXtXUCVAWFcJJDaFOpoo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A2Uxi6hE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dRkynYqV; arc=pass smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61D544Ou1827677
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 10:45:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fHbkJ4mwjReAr8K5r0hTuzwppgBVmKotCe7hoPlgduA=; b=A2Uxi6hElOqO2/sm
	OJOGhd5u3wxFApoGmXljCfKnJHpb3JVdtAlZrbFYeCfc4IbHDKcRvSu7Kc++Lkv5
	YlQ0+7TAZb3ncPwRpZY4JWeOvE9Q5Mldf8a2xN4NJjuXGFq7B+m3P+Z9xSufgB4I
	ViKfqZQvHoAQQ9aOINASiq4AjcUhW/ZgPI5CQ0yzZy+K2ktiCQWDUTWQpsqp3Nje
	XyHVDcEG1Stiy4HXoi03XOUMZgKESf340V6top3D5B26bs1GNLxHxfP2/3eHehtt
	5rhqaTnq6d17cSn4Snx0CKyVP6+4UaQmzNCTpzsNxAlIY9TxKavoG6d0IiKVRP4p
	oXNxFw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9wg016q6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 10:45:43 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-5032e68560dso33096461cf.3
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 02:45:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770979543; cv=none;
        d=google.com; s=arc-20240605;
        b=dQAxbQ0la00rEQVf8exfm7AX2i9QIYM1SBr2YhrQjER2WVSM45DWknypPEqaZI2q+w
         NzQeaf2zzlTZE3EgfR20I8UHBewAf2zcPPSp0rsQuiudtwnGTz44+bQ4Dz7SZYgj69+R
         JqdcfJdNc1HPnuqmFJMDd2VfNGwBY1jkbwxL96Yd7qNOrrYmWDrjWVNKSByUh7B5Keba
         tj9Aa+y7d95PZqm9dw+YCkxtOknJ02oreYP9YzgYBogJwujn2l7kAEZI0OWdtaWLvfT4
         RmaCwTHZjyJ4VOdIKvZyw02e7/hJtSXh/NwzgRAMmPZV7B3WWN6klwxQpNHmoP0bltyi
         YBSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=fHbkJ4mwjReAr8K5r0hTuzwppgBVmKotCe7hoPlgduA=;
        fh=+V4p3UJIz+IT6/4xM3BlsPO0o7a8zhCpgQRjg4DIGaE=;
        b=iLQSXUioV3tdA3d1eyps7oK+nVrWxEnryWnT39IOe3WI2XBzU75qKqRqQGoN8CWkvr
         MsTLgzmR+sWrhRKN1hsbTFuh6X/iZAA0nMPLVHQs5vaEdi3mLeXMpwhuUw4JxIaH4AZ9
         A8fFOmqnh/kPcwMUm82jH4UydXM+PTHlkJHNnmqkZaPtaYEgjqCtek/YwH5Y1lySQR1D
         BaV3NHgQOD8+cvjhRrI/EhPR54ZLOmjb6+9sAdJ2nSasv3ZGMlEP2ovbvBWy6y6UkHBg
         beTRM29BViDrmFg7J/ey4lBWsSM4qrleTNsO5dhpUQ317xZk79HheEwVoSjPYc77Mu6a
         ndXg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770979543; x=1771584343; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fHbkJ4mwjReAr8K5r0hTuzwppgBVmKotCe7hoPlgduA=;
        b=dRkynYqVRNMimRWEpPMWD88w1m8idP/bWqityXvCOdzdhPqYoDlRmmoQSZNwZz1sQg
         C8Vug2yqW1NLUMx8eGrKmbjfKIAdcqTj5uDQOCIai8xu/G1nJztxGSxFIFvEezNS+69u
         onQLq3+2/ikhr2oM2gDsgpENMDAYtVE1MiOXjcBYe66vMeBQQSLg/OJQC7AATK2Sktxo
         U9jFx/zg9R5O8xiubZQVNNa3zesDWZeDjrZItVj5rltzZz3v9pjzHl8ggB0o5PE8MliP
         G/BFUX4+MzWTmGtCzOrS3hFX/ngk7823QH0iB2Sd7Y/GF+g9y+vdmpHjNXQHkRGQc8qc
         fwIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770979543; x=1771584343;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fHbkJ4mwjReAr8K5r0hTuzwppgBVmKotCe7hoPlgduA=;
        b=dkjCyQQT9j+UKQGnHhCP1kCg6eZNU3Uh2uyN0hJKHtox9QjhHcWANB4nRkyclJW5Rh
         rrBag5MqtOAdzOtRNUwEqA6MDmTarW7z5fI4nGkqSLL7SpEb4o2jcHWhi1xvB6mN8KC+
         TLyVIOrPCx2snAvWyuzNh02lw9z0tza9dB/soDBR7b9kh2Ob8Wt9s1uN7XOT+k4pbFZm
         eu49G3LF6ELMVS1HKuRLjHlCFueJ4pQ/Bn+ZBm8/3eh8wviXWeMaH2fz7TjHESZY0wW+
         SwSyZlYXJcAMubvjbPV2+b+xfOOMqmlszZFw5jBkD2woDmek+Rvg9IHjt1fEjN26T3Iz
         ztQg==
X-Forwarded-Encrypted: i=1; AJvYcCXkjFpDf+gnAeBXZJ9FASM2Bi6ZADt8PXSW7k0WTvc8v9XCTwYU2nI/sqbYDqUtyBpyWq0SrMYAosd3@vger.kernel.org
X-Gm-Message-State: AOJu0Ywvmb5AWQs9M2kglTf3ri3mlSWusNyHvk8YjkmdL2pf4FfFh4W/
	V2P25FMH6voIyLDDEEHwzOqlBZhDOqTPC/HJ7oxni2h0sgOEA82JPwpFqBJGSDs2mhdJbNnxdFI
	zsrnmg7G1ZBLRble5u7P/GRDafMKojEbeYTIt3TbD3i/v4FJK2HkDQ6Q7ErFS4RqI6qr+rfeHtT
	tvO3TmvmcWEvxs1R7LFHNLLYqpx0IHc3JEeV2xHGw=
X-Gm-Gg: AZuq6aKtdSrV92dCvR3u8tD2yH6eXw7D1BA808YJoUtmKBsA7ffZ4YA5ss8ZmOwk7wE
	4iEDU0lmGwbOls5OfvYwx+lYL8xyIEFj/n6Pi0v10kHmHcZ0eJqWHgSkQagGpEC5/2W6UzXO7kb
	YAmmd5FWlKioTHXyDFhWRyU24cf51HFgW8sLZm7hrP5wGkH3uZ61wo+TxriZZqBQjfkYgf2aLUA
	KparB1tr4ou/UpU565oqFa4RDbdayohvUE/UlOQ
X-Received: by 2002:a05:622a:1102:b0:4ff:b231:eea8 with SMTP id d75a77b69052e-506a8270c34mr16914721cf.14.1770979542801;
        Fri, 13 Feb 2026 02:45:42 -0800 (PST)
X-Received: by 2002:a05:622a:1102:b0:4ff:b231:eea8 with SMTP id
 d75a77b69052e-506a8270c34mr16914451cf.14.1770979542172; Fri, 13 Feb 2026
 02:45:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260210155329.3044455-1-swati.agarwal@oss.qualcomm.com> <20260210155329.3044455-3-swati.agarwal@oss.qualcomm.com>
In-Reply-To: <20260210155329.3044455-3-swati.agarwal@oss.qualcomm.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Fri, 13 Feb 2026 11:45:31 +0100
X-Gm-Features: AZwV_QiDDnm1FbieQKwSe5Yp76O1orCTXZtH7qVPGaGAFAhJxpRfLJ0dp7Bs-HE
Message-ID: <CAFEp6-1+t+672=Oh8nvjMAEJrV_sz2SMzh1WeDNowsVzdXu8LA@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: monaco-evk: Enable the tertiary USB controller
To: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEzMDA4MyBTYWx0ZWRfX72a1FdqdbFEE
 w2zv3LkEnp1UrDR9Uekaco37R+SfumhkAsk56btxYvd4nzjv9K366RyHxgpzr8AGYOD4Uw5Px9N
 zRN9YhJSN5c/0bkX3mIfEIfVfcbR681X8aWuHHNg74m4Igd3ErjMN/h+c5ds0X6wZo9/aLX5y7y
 cABYtu9gHsdM5wVMdczJOxcheHYMVBwScV2xv504CUt4ggM7RjbrFZm9vqrKY1jjKL9mki7l+zS
 KJZhpU0e0U5GrIFPA8gLBNbwJEE03KFh6JhU90YS0JEQPZ6bNS55jcv3saV9sJUvNcXxwQq/92H
 6tEHw2xsLE+6iseR/gGhymyHRO+ZCAuaurnnLJBzNfonDw1ixHjFALoSEWukg2Txs1J9Gc93eaQ
 xfCV7wG5I0ln1sgwbtqst3Q2WS9NlfABXhOijn7VTVhoWA50OQ/mLQH+SOVeYH/dUqonmSNFiF3
 QO6UVOu0R82a/JWEt+Q==
X-Proofpoint-ORIG-GUID: g42U-39OFGNDX0yP-VYno0t2JO8betEm
X-Proofpoint-GUID: g42U-39OFGNDX0yP-VYno0t2JO8betEm
X-Authority-Analysis: v=2.4 cv=bo5BxUai c=1 sm=1 tr=0 ts=698f00d7 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22
 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8 a=kk0ejG7X_djWhqAOcHcA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-13_01,2026-02-12_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 impostorscore=0 malwarescore=0 priorityscore=1501
 suspectscore=0 phishscore=0 lowpriorityscore=0 adultscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602130083
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[loic.poulain@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_FROM(0.00)[bounces-265336-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[6];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+]
X-Rspamd-Queue-Id: 684981353F0
X-Rspamd-Action: no action

Hi Swati,

On Tue, Feb 10, 2026 at 4:54=E2=80=AFPM Swati Agarwal
<swati.agarwal@oss.qualcomm.com> wrote:
>
> Enable the tertiary usb controller connected to micro usb port in OTG mod=
e
> on Monaco EVK platform.
>
> Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/monaco-evk.dts | 53 +++++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/monaco.dtsi    |  7 ++++
>  2 files changed, 60 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boot/dt=
s/qcom/monaco-evk.dts
> index 03af9bbcacc9..e6fc6f6a52e1 100644
> --- a/arch/arm64/boot/dts/qcom/monaco-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/monaco-evk.dts
> @@ -27,6 +27,25 @@ chosen {
>                 stdout-path =3D "serial0:115200n8";
>         };
>
> +       connector-2 {
> +               compatible =3D "gpio-usb-b-connector", "usb-b-connector";
> +               label =3D "micro-USB";
> +               type =3D "micro";
> +
> +               id-gpios =3D <&pmm8620au_0_gpios 9 GPIO_ACTIVE_HIGH>;
> +               vbus-gpios =3D <&expander6 7 GPIO_ACTIVE_HIGH>;
> +               vbus-supply =3D <&vbus_supply_regulator_2>;
> +
> +               pinctrl-names =3D "default";
> +               pinctrl-0 =3D <&usb2_id>;
> +
> +               port {
> +                       usb2_con_hs_ep: endpoint {
> +                               remote-endpoint =3D <&usb_2_dwc3_hs>;
> +                       };
> +               };
> +       };
> +
>         dmic: audio-codec-0 {
>                 compatible =3D "dmic-codec";
>                 #sound-dai-cells =3D <0>;
> @@ -77,6 +96,15 @@ platform {
>                         };
>                 };
>         };
> +
> +       vbus_supply_regulator_2: vbus-supply-regulator-2 {
> +               compatible =3D "regulator-fixed";
> +               regulator-name =3D "vbus_supply_2";
> +               gpio =3D <&pmm8650au_1_gpios 7 GPIO_ACTIVE_HIGH>;
> +               regulator-min-microvolt =3D <5000000>;
> +               regulator-max-microvolt =3D <5000000>;
> +               enable-active-high;
> +       };
>  };
>
>  &apps_rsc {
> @@ -484,6 +512,16 @@ &pcieport1 {
>         wake-gpios =3D <&tlmm 21 GPIO_ACTIVE_HIGH>;
>  };
>
> +&pmm8620au_0_gpios {
> +       usb2_id: usb2-id-state {
> +               pins =3D "gpio9";
> +               function =3D "normal";
> +               input-enable;
> +               bias-pull-up;
> +               power-source =3D <0>;
> +       };
> +};
> +
>  &qupv3_id_0 {
>         firmware-name =3D "qcom/qcs8300/qupv3fw.elf";
>         status =3D "okay";
> @@ -690,3 +728,18 @@ &usb_qmpphy {
>
>         status =3D "okay";
>  };
> +
> +&usb_2 {
> +       status =3D "okay";
> +};
> +
> +&usb_2_dwc3_hs {
> +       remote-endpoint =3D <&usb2_con_hs_ep>;
> +};
> +
> +&usb_2_hsphy {
> +       vdda-pll-supply =3D <&vreg_l7a>;
> +       vdda18-supply =3D <&vreg_l7c>;
> +       vdda33-supply =3D <&vreg_l9a>;
> +       status =3D "okay";
> +};

I noticed that usb_2/hs doesn=E2=80=99t work properly unless refgen is
supplied. It may appear to work on your setup if another PHY or
subsystem enables refgen, either explicitly in software (e.g. DSI) or
indirectly, such as through DP, which might be voting for it behind
the scenes.


> diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/q=
com/monaco.dtsi
> index 5d2df4305d1c..59dfacbae4f6 100644
> --- a/arch/arm64/boot/dts/qcom/monaco.dtsi
> +++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
> @@ -5232,7 +5232,14 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>                         qcom,select-utmi-as-pipe-clk;
>                         wakeup-source;
>
> +                       usb-role-switch;
> +
>                         status =3D "disabled";
> +
> +                       port {
> +                               usb_2_dwc3_hs: endpoint {
> +                               };
> +                       };
>                 };
>
>                 iris: video-codec@aa00000 {
> --
> 2.34.1
>
>


Return-Path: <devicetree+bounces-264620-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KN6zGM0djGmNhAAAu9opvQ
	(envelope-from <devicetree+bounces-264620-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 07:12:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B7938121909
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 07:12:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 43135300FED5
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 06:12:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 720B9349B04;
	Wed, 11 Feb 2026 06:12:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B6vinRvG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FJIxDVDW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 564A6340262
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 06:12:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770790346; cv=none; b=FzT092/Hm5PYh4k+6YOLdSILAXPt/WsRVJvWd/nhIs/5FcsCthiGqhfstrKLgFyB2zgxUgV5pZDvBbQjlA8ECMNEQFScHNULnpix2cagB4bBGRrexzoXC4nP5j9QLQ2SY/m3ws3Ck7p6mjl5WTFBUbihiEm+8nJduj8rkQRZ3K0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770790346; c=relaxed/simple;
	bh=BGN2rhjhQfVk2QgMoMDwuUsHKAkkfQjTbSXUetjedKM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fTz0jtIG/O6jxqfSa8ZU+JC7qAdQE1k16fzxSkFdjKqb5lJ0bDJ4j+gpFu9r+EGGlQOoNi8K//xhEUkKXB8uJOqRXATlVa+QUDS/mKAb6fMHsRO1p0Ut52B2tr3eF1ovbnUOUGc/WOfU/TXSK/GlkcPHcqQWCahG4X+jORkDzMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B6vinRvG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FJIxDVDW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61B3cSpa837947
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 06:12:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=j9khDJwC26k6b6vyvHB5IsQv
	yavqAsh5XUOPgKVhYWc=; b=B6vinRvGnC3BYq0BQO9TY0/3mqqtzKoWe4js/hS4
	OnTDuX96dd1X68PYUuQKLVEqWbOQatppcrg3Fva5F0Jlac9uYIIJR5gdXekD6qxN
	N/Ssns0oXdtnpPSXpL/nt8gPu7sPA5BzkgXjDeT13+9Ost7rQJy3o4vHZGujYBSR
	GTXjcC6Ozr8WRJZfcARtCqJnyh9IjpNmGAmOzsN9UOumfhwXV2kzJlyu2AX7NvQu
	w2fzCmxEewq2r0GEJOkxyUBwftXO/wWzHsQv7quwe6Yi8/CsmUXXMvNuLHngj+e1
	0KdHbSPO4pXfxTaeySKDBZEN2lnpfgRdhohnDq4cnLjJ3w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8j1t8cah-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 06:12:24 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c52f89b415so431993385a.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 22:12:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770790343; x=1771395143; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=j9khDJwC26k6b6vyvHB5IsQvyavqAsh5XUOPgKVhYWc=;
        b=FJIxDVDWkNEHY1B8Z2MZjs7dqaiQQYPnb/SkRXJJQGzauvs4wtBHdFkVPgIhrTDUBz
         wa8P8u5G1hiYlLaRZdBWQ/aTC2QDxX3yUySzWZq9c5oOLJzkv2cfZx8J8dwAHDEn1wPK
         Tee+MuUAoqm9I6OhoFqkMdpBxKa3865VdMggUXnRrYDwgONHswuXKVQvBm3uTKY/opuk
         x1SMCr5brhtkvAzZYyRDlFjKstnzdkNim4Kms7s+WHheHYUP3Hw3mhhsrARVepwR3qWl
         mkpLLyBcKHIFJQRpA7sNsgISSOACgvaon3F+BRFnNQpqEZZyktn3E7pd7r8l4gdGbSct
         mRPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770790343; x=1771395143;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j9khDJwC26k6b6vyvHB5IsQvyavqAsh5XUOPgKVhYWc=;
        b=FzfiBJmI9c0x/Ya7OZtZugvx0GFwLbCzOysFXCRXz1vmZ5IINEXydGWBKWt+e/otq3
         NQoU+j3nQpV2tV7elYyOzhSlPOx4fCh6IIJNkuPsZK9jz1QWDjyFLcKbPqYqmqTc6rBY
         h/ro5wUxHBvQwCLDjN4fTZk1xrByvBw1FzmdfxrW6I9n2MHh0Cf+go4+/rUsfsGPGDxk
         I1BwAmUym+5eXWBQ7J4LbURMWiKp9AAm6FQyjCwYUuGq3l4SLPOee4k8YiTPNXIYln/X
         IN1RbmbKuIhfwSFl1uTjkXO5TD1NQTHCN+ndwqUxbPuujR5ja0t8qazqxRzmzDIBgiCr
         owsQ==
X-Forwarded-Encrypted: i=1; AJvYcCWe6bDmBj+T6yoiU6fpQJlYh5VsH/NbQ3oqFgtzCiy224Fm9B6FAwLh65vEzIOiKv50hLL+ef7oeY0A@vger.kernel.org
X-Gm-Message-State: AOJu0Yxe5g5EMAccpB6UQM23tb7kWr/ynVoCJXWYy2icveA49wnaEF8y
	T04ikjleGltJBZi+Lejfuuka3hOuTVkuHHVWyPRD4b6SsE+BzTXpmWSy4B6XKh7ExDr58fQElt7
	O3H4JP5/bubukCgWpfuJrSOPx6PjRvWw0KygLIfGaIpI3OgrFe3hbvjnp3jLYdAJE
X-Gm-Gg: AZuq6aL0O8tbbVdPSb8ztM0A0CkBTfX2w9KTDHW1ejdxlGP+5U8WUTKNL5LbbmYS4UU
	pfnHjcggvftqI9dERPFr2YON723gvEx+J1nA3XF8Uu3mkmpKlkp3O4hJutHQ6kcoh9sLL8sNDcv
	KEgNIFRyF4rwk5W/t9pTbdpxvn+UTjPqRkultfpFkXMLitAAYqyg9hqN0wDG5u7UYafrBreW7+O
	dNy71L3Vz4yxGXK86gjVZivyCluSGBZVL4fa2ZgcdCFWDOk5ghqRnBudDx8ala8Pv5Ur+UdBsFt
	9a7ZbtOnoK71yNcsC458/4Qmy+Kz7W7gPYENpA7u9IAIoGEvJkVnAdDGgrxCEqLWflUSpqty8V7
	HpvYZIj27egbPVQmdxhpoxx/PH8DVz3hf3Amb04ly3+I0gnTUffIQm8w/lg/XVa23YLa5rimcWj
	AepLsxr7vPdDCtZ0MijMAraT4sE9Rrl6ITvSU=
X-Received: by 2002:a05:620a:1789:b0:8ca:2baa:6658 with SMTP id af79cd13be357-8caf238e3bemr2165205685a.70.1770790343584;
        Tue, 10 Feb 2026 22:12:23 -0800 (PST)
X-Received: by 2002:a05:620a:1789:b0:8ca:2baa:6658 with SMTP id af79cd13be357-8caf238e3bemr2165203885a.70.1770790343112;
        Tue, 10 Feb 2026 22:12:23 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-387068e5df8sm1333581fa.29.2026.02.10.22.12.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 22:12:21 -0800 (PST)
Date: Wed, 11 Feb 2026 08:12:19 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Akash Kumar <akash.kumar@oss.qualcomm.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: qcom: qcs6490-rb3gen2: Enable USB2
 controller Micro-USB OTG
Message-ID: <2zztcabuf4hkixj445m3iiqdsmg7jju62e3fgupb6kaqirx5lq@2mhs5hcn3p7p>
References: <20260211052146.3760500-1-akash.kumar@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260211052146.3760500-1-akash.kumar@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjExMDA0OCBTYWx0ZWRfX8F1PnYi0ERSK
 akb+EEpM5vuojlV7Ty9qIA7OwuyG8z8G3vHRCow1veiAd2kXDHGCbxehNEzHhCyItJUA/Q5uGT+
 lz1A1ROVI9miZtuoB+myQIXweCqpVwFcr9etBcPKsI/O4jO3P57gtxu8CFt6oWOZB8tnZyrMVA1
 T+/JVvvsmFlrz5z+SyyfwW6td3VBfDxrN/vb36toZ74IdQANmniOuqlW4OXMCt2iJKUZLnP0WjM
 /AoBk5WFvWSmXlsHfnkgHDq7VGoDb9j7foadjjHx9TgoDiFk+7NWaE0QssQtBkDWYeg/pqTp5rb
 Zip9EUMTQ5v8MfaFKll2b95CBQIv6a28eb6V8MPnNY/W3lln8npwqg1JuWf4ePLR1uDQ4Bq3rOf
 WgtZNN0pXFuMI7KecSd2Ti7Ee2/KJCCGwRGqLmH4tvzqSOCQzb6BodLp3Xi9UuviZF70x1Gcyl2
 jXsgD4ejmWStfRD3DAA==
X-Proofpoint-ORIG-GUID: yYEQGy0F5D-oLnWi2uqlht-JsMkN3kAK
X-Authority-Analysis: v=2.4 cv=cabfb3DM c=1 sm=1 tr=0 ts=698c1dc8 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=KgnbEzuii_36Y5xDassA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: yYEQGy0F5D-oLnWi2uqlht-JsMkN3kAK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_03,2026-02-10_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 adultscore=0 clxscore=1015 phishscore=0
 bulkscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602110048
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264620-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B7938121909
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 10:48:18AM +0530, Akash Kumar wrote:
> Enable the secondary USB controller (USB2) and its High-Speed PHY to
> support OTG functionality via a Micro-USB connector.
> 
> Define a dedicated 'usb2-connector' node using the 'gpio-usb-b-connector'
> compatible to handle ID and VBUS detection. Link this connector to the
> DWC3 controller via OF graph ports to satisfy schema requirements and
> enable role switching.
> 
> Specific hardware configuration:
> - ID pin: TLMM 61
> - VBUS detection: PM7325 GPIO 9
> - VBUS supply: Fixed regulator controlled by TLMM 63
> - Define a gpio-usb-b-connector node for Micro-USB support, mapping the
>   ID pin to TLMM 61 and VBUS detection to PM7325 GPIO 9.
> - Add the 'vdd_micro_usb_vbus' fixed regulator (controlled by TLMM 63) to
>   supply VBUS to the connector.
> - Add the 'usb2_id_detect' pinctrl state to configure GPIO 61 for ID
>   detection.
> - Enable &usb_2_hsphy and populate necessary voltage supplies (VDDA PLL,
>   VDDA 1.8V, VDDA 3.3V).
> 
> Signed-off-by: Akash Kumar <akash.kumar@oss.qualcomm.com>
> ---
> v2: Fixed minor comments on v1: https://lore.kernel.org/all/ad294a50-027f-4caa-a9b4-e145f709b50a@oss.qualcomm.com/
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 64 ++++++++++++++++++++
>  1 file changed, 64 insertions(+)
> 
> +
> +		port@0 {
> +			reg = <0>;
> +			usb2_controller_ep: endpoint {

Nit: empty line between reg and endpoint. I'm sorry, I didn't notice it
beforehand.

With that fixed:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



> +				remote-endpoint = <&usb2_connector_ep>;
> +			};
> +		};
> +	};
> +};
> +

-- 
With best wishes
Dmitry


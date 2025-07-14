Return-Path: <devicetree+bounces-196255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DC680B04ABB
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 00:33:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1E0D93B716C
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 22:33:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6489F23185F;
	Mon, 14 Jul 2025 22:33:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cLnbG/TV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD6E9126F0A
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 22:33:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752532424; cv=none; b=YdU+jV5d8+9TnUY1TtTyOjL/ojttMztyJcTOK47GSdKhi5diGieRVS9p4rFPhtSrS1pU4oXyAxoRxTHpZ0Gaic0iwReSdV7s4CUXkp2TDAld9S/RlkC6FlDDrXqCh7H3WOts2KLXnB2EDQv40Wm/GiYWM91tzKW+S7VUiy/CmUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752532424; c=relaxed/simple;
	bh=bunis5LfXrPX5VTCd+1M7mKLIy9OUoNx+GoYz1o1G4k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RQEzQ2oVWLKmXHlwQ9USWbqLAWlPRwnTog8hG+HMUXg7eOrhAoN27mmOh2S1bKg6Gvgjp1yNHhknNDo9TOski7WXR2BQfXFuIBe3XfCk/iPlGKIR3HaPCnvDNk6xbStL1tMfuYWchdPzJjZVHGd+DRrRw3Ah6QR3it6OeHbbxyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cLnbG/TV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56EJcR5Z000866
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 22:33:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jin39v5RU2OC6taZwVEep++H4MP+V5H7HkCH2SULjQw=; b=cLnbG/TVb7wqSU9v
	zXIC8UP2dgJsrBQ/B49OUI5+PtwnNpBuqPs7LZhg2O42Jmd6A5PxQw/dh/SgKwIK
	EzxjQqEWQRmCdeUQFQHRPpkwOCxY4f4rXXUTe31S63/hhRRkKLWIKjFeAoW1IYUe
	VTohsGPvpiI51AuRT5/LwE4T/NbaSkfokgp8/Pgadh9/CNNOKetIbDQf7wWyq8Tu
	5phMJwzNcqPQV7F/zdmW7gUKxPcm9lXFrY0cB1IfKmQ/iOvEKpx1CnImyFgedVEU
	ONa83X4bOFlrR9FXvS9Xgr1nrLa9HgxCtFlv94cLsUbt14wEBqu0s9+Sqpdour2l
	pcPwew==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w58ygv37-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 22:33:41 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7ceb5b5140eso901409985a.2
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 15:33:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752532421; x=1753137221;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jin39v5RU2OC6taZwVEep++H4MP+V5H7HkCH2SULjQw=;
        b=PDcqAdWBqFwbkbsQH4aBjSAT9S/o3mo2jvtwDC25LHs/guA6UsWh4ibke4ZxSFaDaa
         i3MiWtRGUyPqMK0lKlTFURpJR3VITx5Kya0r2gnjh8MqSvNBJnJtgQpSfOQT/9g1rsFd
         qw2FoxsLNt2/qan8XIg9Ltwgtfy7bbJ9oNnsEN44Gaq+D5V9QJzIGculwdMJslPIBGN6
         +ci1+xD+yQrYQREaPktIDYu/U05gP+E9vHtn7jwJwEWKCiAsXjV1RSBfj3shJfEUy3Ef
         pSrmJf8ridtjeUaOuAcvjZjQKEp7vrS3KeiuPUKkHAZ+5Ss1ch82cFOFREVVWgfxs0+9
         9X3A==
X-Forwarded-Encrypted: i=1; AJvYcCV4O2wBMRmJQxU7GnEvwjdtqBAYdy0Oya6yTh5dcNQTG44YLDD/9x+X8gD+nEmvythQUVp25Blg64rc@vger.kernel.org
X-Gm-Message-State: AOJu0YyLC3ZL162dvvUcx32aVLDNthNVxdpY5L9EcNfXsBrWWT+OqmDB
	nJ2CMB0eZnKZNggiW0pOCltIt4085w6VPOFls6HUJHlYSDTwe3RX/zWsBBFPSxu1mU8ky6iXUpp
	1QAU42WY76TdijPv5zcAE0uBF8riKhLzNDMqAu8sRBiIrM+RqJSzmqtnDAfez7ONY
X-Gm-Gg: ASbGncuZi99xNpUl1I27ZfW3O2Apq7lQijOf3lwnqZhwAtZWQOaVQ594MFt2/p/1syF
	50k+szQaTjBOD3u0veIL7UsxkfvZTBmigahwvJcx1uu6aMU6yOIWgQU6ht7pdq79OtnKSxxQPVx
	jL5XzKaYjZsSHzIw6Lx0eiS5WvZsvpYNC/BHuYWkP2z1BbtYKhJzdk6UrazKg+xtPSWwXc85avG
	evtaufTWmuxIy2a2k0Vg6ksmmo1B7A4lHwcQsg/W89ytbNQq9feul7oXM0mfTceSfMf08QyeeXx
	Er/8G3dD0/LvAO37LhxHWixMrs8mtfz7Qt5NOB7c65iC36OxlCAmPAAOqf6mDrGkxLH32uFLzF/
	bwMT+mrux3yCWo3Mbe6JdIw6gA1oVYqr4zEFm8Gcp43TmhwhcB1kl
X-Received: by 2002:a05:620a:472c:b0:7d7:891:83f with SMTP id af79cd13be357-7e338d264c6mr102022785a.50.1752532420664;
        Mon, 14 Jul 2025 15:33:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFCqBgY+159Vec1cfE9dZ+u3XhxSpLqUZeIaerPTNko5JEPCLrdG5Wtqgg6IXPtXcsQrNQU6A==
X-Received: by 2002:a05:620a:472c:b0:7d7:891:83f with SMTP id af79cd13be357-7e338d264c6mr102017785a.50.1752532420066;
        Mon, 14 Jul 2025 15:33:40 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32fa2930e70sm17078441fa.33.2025.07.14.15.33.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jul 2025 15:33:39 -0700 (PDT)
Date: Tue, 15 Jul 2025 01:33:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Dale Whinham <daleyo@gmail.com>
Cc: Johannes Berg <johannes@sipsolutions.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jeff Johnson <jjohnson@kernel.org>,
        =?utf-8?B?SsOpcsO0bWU=?= de Bretagne <jerome.debretagne@gmail.com>,
        Jeff Johnson <jeff.johnson@oss.qualcomm.com>,
        linux-wireless@vger.kernel.org, devicetree@vger.kernel.org,
        ath12k@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 7/9 RFC] dt-bindings: wireless: ath12k: Add
 disable-rfkill property
Message-ID: <prrra3lon2p4pugkgeytf5ow5wls62lfdnwcdykztw3qzwity2@d26aqh6wdyln>
References: <20250714173554.14223-1-daleyo@gmail.com>
 <20250714173554.14223-8-daleyo@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250714173554.14223-8-daleyo@gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE0MDE1NyBTYWx0ZWRfX7ekkSY9Dp1QX
 /b8PfcuidvOdhDWdacrYoENMKF5t+3sVO/wJGhffOx9CW0t5l5Of5AQXIcRgfOMspwGqcyZ3+hC
 pheJe/RUEEWPnNrzcNODhrRAhhygybwHVFcvNAO2n1BP1+PGvS0caTDWZc/h0s9RT8VVAJIbA5B
 8t9gcGi4fopsmr0erGauZBY3DaQiRTmp8gTWynzohAWVXKOZne3Bq5JAbaHLNrFFJvuK7JrQY/6
 uyZPc07CP3wr5Qsuhu7zYUuiAHKn129DTyUbTlTDzuVvyOORv4AKh2ZoEQcuabaIMQeHgvWJj5i
 Sji4ssEvOGjkEeJju2GZuMqrdbycOr0ZLTCbizymoANX3Kq5J8ED2Be1bv6ylwed5IEcLLhj9SK
 5QxWIVph/aP/Kyncjgbhvxm2bds/+P0U9ABHBgfNQEkXDGBpDa3cYpOuczLyFCAuUfer2Obm
X-Proofpoint-GUID: fB3kUqmMQftvo1lQm08kSxC2-0BPlkOM
X-Proofpoint-ORIG-GUID: fB3kUqmMQftvo1lQm08kSxC2-0BPlkOM
X-Authority-Analysis: v=2.4 cv=Or9Pyz/t c=1 sm=1 tr=0 ts=687585c5 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=Wb1JkmetP80A:10 a=pGLkceISAAAA:8 a=g818jjc2pSN6WLbPb0IA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_02,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 suspectscore=0 adultscore=0 spamscore=0 phishscore=0
 priorityscore=1501 lowpriorityscore=0 mlxlogscore=999 bulkscore=0
 impostorscore=0 malwarescore=0 clxscore=1015 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507140157

On Mon, Jul 14, 2025 at 06:35:43PM +0100, Dale Whinham wrote:
> From: Jérôme de Bretagne <jerome.debretagne@gmail.com>
> 
> Document the disable-rfkill property.

Why? What does it mean? Why are you describing Linux driver firmware in
the DT?

> 
> Signed-off-by: Jérôme de Bretagne <jerome.debretagne@gmail.com>
> Signed-off-by: Dale Whinham <daleyo@gmail.com>
> ---
>  .../devicetree/bindings/net/wireless/qcom,ath12k.yaml          | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath12k.yaml b/Documentation/devicetree/bindings/net/wireless/qcom,ath12k.yaml
> index 9e557cb838c7..f15b630fb034 100644
> --- a/Documentation/devicetree/bindings/net/wireless/qcom,ath12k.yaml
> +++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath12k.yaml
> @@ -48,6 +48,9 @@ properties:
>    vddpcie1p8-supply:
>      description: VDD_PCIE_1P8 supply regulator handle
>  
> +  disable-rfkill:
> +    type: boolean
> +
>  required:
>    - compatible
>    - reg
> -- 
> 2.50.1
> 

-- 
With best wishes
Dmitry


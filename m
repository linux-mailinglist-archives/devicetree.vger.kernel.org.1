Return-Path: <devicetree+bounces-269762-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJY6NWDApGm2qgUAu9opvQ
	(envelope-from <devicetree+bounces-269762-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 23:40:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4382C1D1E4F
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 23:40:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 82DC430125E0
	for <lists+devicetree@lfdr.de>; Sun,  1 Mar 2026 22:40:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B13A375AC8;
	Sun,  1 Mar 2026 22:40:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FmVl9CSH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CcfRFH21"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF4B9355F5A
	for <devicetree@vger.kernel.org>; Sun,  1 Mar 2026 22:40:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772404827; cv=none; b=IOu2WgeLkk/KljTiQl7E5K43NGo/wehjkOKe8rQZJlPqi8e4Nt388jBPIT1Vgz+IDhs4HcGADVd+ttnyW80O/iZgcXLbiGvxeetjrses5Utkr8hkqWxr3O3qaQXFvEvt6Oqbrd0kN2fE5M5E0oMH4aM1N60nESuAAPFd0pO8CMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772404827; c=relaxed/simple;
	bh=RoF4CYBqOCcTIp8+OeNsYC8UEsKn2n9wht7SnNtDGfk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=C3yvw9b8XN31RFEkYT94kTMS6BFLi6P78t4L/NxDwAeRPqmYMJKVdoKbIlgabtTyo9M/qelXZ58/q3q7Z5vwCeAdIFA9EOVBknWM+4m8vDcShdREsRoEshd81PH8+oAlesk+kdcMNXIvtuIB91Pk7Xs9UokdyRzqrFAbERhXNYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FmVl9CSH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CcfRFH21; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 621MRlMG1935752
	for <devicetree@vger.kernel.org>; Sun, 1 Mar 2026 22:40:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=liHMhkUZwLObZQKcaR0dCOsp
	FbGoGsXIqL6LcZpPJfA=; b=FmVl9CSH3WuzakbWRWrtDYLnsJ1shhPHQUPlDcIe
	+9lv7bblF8fP0J2Pw0MmfcBT7vGoLQmrPCXiIyWaJu0Jpx38Gh8RfROnel/TuF4+
	FK8jVR4/TdHq9zqhye2kFv4nJoZqwxlJcfl5J8qRo40FtvI5l9KnemiwpioGxqWy
	2BKC+M5JSMqOQ8tsfh8ybY2Ho+JnCHu63zxiQh4uw/2OG1SYzfPgHMYDB2q3qeWx
	gGAk5611x3LjEVhtnZ1p8DG90CP30UrenFVjdemKCH2eU1rbTYOYVyRxM42JCdM5
	pOKXaUr+dFIY4po0vGSiOZXqlE3IeQ0GEjUxAoNgI3xOhw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ckshkua13-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 22:40:23 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-899f6e5b909so47954716d6.1
        for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 14:40:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772404823; x=1773009623; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=liHMhkUZwLObZQKcaR0dCOspFbGoGsXIqL6LcZpPJfA=;
        b=CcfRFH21mWxzdpaRfR3TO++Ob/4XgvqrAImJXhAnH3OLnF+QsearLgsFj0fN8kNXie
         YHyZa4s726kRibxG/C0XPG+K3h1NmegA5pXO/03G6iigQB2dDGVRk6qJn5gdElYmnByH
         7ALcm8YlQ66vF7P0tzCJLLngGfCnNhQstvCFsBzuoisUK6IUfSWSpp0iY8Xrw1avInOF
         RIUAOwibinClXgJdIrlc+aHGNk7J6yYq/o0uHdNfOK4cQjwES/sihif9bYnD+bbspAHu
         OINq3TmDqpJDXZYkA1hjEdxt3HfmZt9xhQx8wDMCHTLMdOjLCqf9RfkYbuYo7LoqH1SE
         B87Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772404823; x=1773009623;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=liHMhkUZwLObZQKcaR0dCOspFbGoGsXIqL6LcZpPJfA=;
        b=nekUKZIDKsAe8voh+P7Af9o+bzjumprhmGUIlXTL7ShnFTrU4B6p4Ei6GGvy4/y1qN
         nVJZ5vokmVsSbdE4VRKpTihDa1iE9H3I8gHT1gh6LUV3xVu/6Sia6aGM7y6beSAJyhRj
         UfcEqSf2qPJMUl5xWnBkcCJhxO1ScJacS7cECnWf6SmQEbwxZLfbKuKXNCJwbfhQI+ok
         dK7R5KNuEh2VSjRgxs1/4DhXepdByuM/cQLMsa/q5VQk1nIfbd3KdlAQ29QGgRUkBHWF
         HU6JJzWq/zpaqcF3Sp8iOYxpKWiyC0JqlcRNCP+F4Pjafo2zhGwQBMMblXU9UKCP+em7
         gSUA==
X-Forwarded-Encrypted: i=1; AJvYcCUqBiLBKQLZwe8ylrCElu4cDFFwpFk0S1I3cfRXmOTO+WHYLPQSM5Nva17Nc+NB0DhiTxsBGlWP3Q1p@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2ztCJSGdmChoLQGCCuZKJL/4oY/x5j7vR5bfGmEDHztxxqqW0
	IP0wgdGyWfU8cNIbJVoyoUY+4yX2eMOe3+MpeycAMgnxj84uLYURCzOCtG93u0QZ1Npw5TjBhVB
	PqQUn3oE+Fj9GZoKeCeuD+zkThAAsECXGCqmqWCRUi5Xk17WkI9W00+aPvDSvIXCk
X-Gm-Gg: ATEYQzzL+PAM9wbHOQDtEZGWmVEWj9DHoF1p73kz2CUYOShdIJLrpj5uSG8P6fZP0jA
	e6rA1SHAcVHcZPncMCHQB6kmvsoJYWzlRVIBxJFMgvkKHHh6rAUk26RgpwJckZgv9ffAzIdd/3F
	ZaqBFUTqMt3uEuGgXz+S/t83uJY+M8FW8CE5NOQEEp0FfQn+MfAg/s5uPb6pWgM1NQAzHHiDMXp
	we2g5JjS+qVmSXDmlSCvgMj0j6TpThWr9aiUkV/BI+/bAmYaW9gXt2M6z82PgmrKaCoZO4HwwAz
	PAayW5a4srqFH2NBvwmqQr+GIzsk4qXy2DgdaGZFZt5IG/nhMwqkMPiZMBKAEpQhgYIOmCwapAp
	aano8p1lPV01Ltul214xhoEw5wTaZQeQYZcqA2mT9SK1GQEYCYcunBNIybTju3bG21cp80lGHwT
	FBMSI0l/OHfx6zLH7HISC3udwpSni2d1NNCNQ=
X-Received: by 2002:a05:620a:4413:b0:8cb:4a64:f482 with SMTP id af79cd13be357-8cbc8d83cc4mr1468462685a.18.1772404823113;
        Sun, 01 Mar 2026 14:40:23 -0800 (PST)
X-Received: by 2002:a05:620a:4413:b0:8cb:4a64:f482 with SMTP id af79cd13be357-8cbc8d83cc4mr1468460285a.18.1772404822548;
        Sun, 01 Mar 2026 14:40:22 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389f3016bf6sm24553701fa.32.2026.03.01.14.40.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Mar 2026 14:40:21 -0800 (PST)
Date: Mon, 2 Mar 2026 00:40:18 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Henrik Rydberg <rydberg@bitmath.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Petr Hodina <petr.hodina@protonmail.com>, linux-input@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, phone-devel@vger.kernel.org
Subject: Re: [PATCH 08/10] dt-bindings: input: touchscreen: st,stmfts:
 Introduce STM FTS5
Message-ID: <qibmsgfttxo6kiaqyjljj6otamqp7okfr4abwpmuo7daanl6qu@ka33zvoz7lte>
References: <20260301-stmfts5-v1-0-22c458b9ac68@ixit.cz>
 <20260301-stmfts5-v1-8-22c458b9ac68@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260301-stmfts5-v1-8-22c458b9ac68@ixit.cz>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAxMDIwOCBTYWx0ZWRfX0ml7ZmDocdwv
 5rJ5YQOCuPBNwLGrB3AJaLdAjJU6MaWLq8g5rYNSfH/0Jf9lX3jo4EnaN/WuAF1qLGzbGLYweKV
 DebMJXbD1QQKoQJ4LJ6mHKHGUl3Mno7bGy7NmYsFl3ldJWQhosjx8fD5UxLv04/FrldZFTSKKz1
 U6Cxfdw47hJL5kaJHAnNk4pFGjC5vVWkZt4CqQ8iuIdmIAtYQz2fysCERLi0V4ewDz1QT10AJwc
 Io+XqOpErixrlmdWe7qJ/RMY29pa8suzQz6Xvj6BnrcFt9WEv7o8Iz0++lT1HjCLeDb1uQXnnyv
 THdkIiryTIlE0BKxv3Qi65XgS/y8no6H2aH/zfJf7wUWj/4PJ4aMLxgBO4W1VwloHSvQ4o5DGmp
 fhY0mMNQ3dcZ+++ruvXpET3cV9dwC+w2l/3rUTCkutxJd2UfAF5YEcHVJ78NHFv50dCjQaQ4nA3
 Y8bqWpcm/yqYwffIFaA==
X-Proofpoint-ORIG-GUID: hH6vDVeqhqKQL3jntyNxx33-jUhKnZ71
X-Authority-Analysis: v=2.4 cv=EvbfbCcA c=1 sm=1 tr=0 ts=69a4c057 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=tZRLSl_A3aL-_mRAmj8A:9
 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: hH6vDVeqhqKQL3jntyNxx33-jUhKnZ71
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-01_05,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 malwarescore=0 adultscore=0 impostorscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603010208
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269762-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,foss.st.com,kernel.org,bitmath.org,protonmail.com,vger.kernel.org,st-md-mailman.stormreply.com,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,ixit.cz:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4382C1D1E4F
X-Rspamd-Action: no action

On Sun, Mar 01, 2026 at 06:51:22PM +0100, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> Introduce more recent STM FTS5 touchscreen support.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  .../bindings/input/touchscreen/st,stmfts.yaml           | 17 ++++++++++++++++-
>  1 file changed, 16 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/input/touchscreen/st,stmfts.yaml b/Documentation/devicetree/bindings/input/touchscreen/st,stmfts.yaml
> index 64c4f24ea3dd0..329d89977bdbc 100644
> --- a/Documentation/devicetree/bindings/input/touchscreen/st,stmfts.yaml
> +++ b/Documentation/devicetree/bindings/input/touchscreen/st,stmfts.yaml
> @@ -19,7 +19,9 @@ allOf:
>  
>  properties:
>    compatible:
> -    const: st,stmfts
> +    enum:
> +      - st,stmfts
> +      - st,stmfts5
>  
>    reg:
>      maxItems: 1
> @@ -53,6 +55,19 @@ required:
>  
>  unevaluatedProperties: false
>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          const: st,stmfts5
> +    then:
> +      properties:
> +        switch-gpio:
> +          description: Switch between SLPI and AP mode.

This doesn't sounds like the GPIO on the touchscreen, more like the
external schematic component. If it need sto be turned to one position,
it might be better to use GPIO hog for that.

> +
> +      required:
> +        - switch-gpio
> +
>  examples:
>    - |
>      #include <dt-bindings/interrupt-controller/irq.h>
> 
> -- 
> 2.51.0
> 
> 

-- 
With best wishes
Dmitry


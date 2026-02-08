Return-Path: <devicetree+bounces-263749-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iAuQBHwEiWlB1AQAu9opvQ
	(envelope-from <devicetree+bounces-263749-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 22:47:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE9910A43D
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 22:47:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E78BA300952E
	for <lists+devicetree@lfdr.de>; Sun,  8 Feb 2026 21:47:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DD42344DBF;
	Sun,  8 Feb 2026 21:47:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="J1tdN//K";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dSxAmft9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEA222D7DDD
	for <devicetree@vger.kernel.org>; Sun,  8 Feb 2026 21:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770587257; cv=none; b=oKFodqyTfC9bIgi17rICsJCLJcc+rwPZs0eUDl0tsRUd4GkBax1u9DI20mxV3Glh+kvM3VT7HK2o9yXYY08bJYoz70HMdKg7HYa0Kat4YN8+ikDKneIzItipW9YPm61K7Kr0awaYRRZunXLjngQoUImaW/LgjO9Z4m63qODUbt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770587257; c=relaxed/simple;
	bh=Xteia3xDPBflDUM0Q2BT8DSCKx61CviNIN/pGViwiRo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fHplc73jKiyegpjsWh8O8Bzr2V59zZo2heY+YgqSrXAfqFoROUMP+clYhL+vyU3JfX41b8mivPUfj7qDujTgcGaKp3KkTWrmgQzxjx7phHphADT49wdWawaJ7HJkdqrj7De0DjBtPJTvhA845aqlp0KUZPOFDe35smm08j0cuvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=J1tdN//K; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dSxAmft9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6188glDs880481
	for <devicetree@vger.kernel.org>; Sun, 8 Feb 2026 21:47:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=AOs0nwj8LTDPZqYI9z0Q0CT1
	xulosXYHvvzIwLb23fI=; b=J1tdN//Kvn7jeVjtKHN/D04PbyUsEHosUljXX8x4
	0B0dg5dnSkKt6M8DPqhCEDUcI160FewN1qESrsXFvL8ZvS1PoyPzrQVU3o+pYgpP
	4An6c3wv4Z0waKv/Cr76CMhPxKrimOSXdO/gadzZSn2wOPtK3uep+Dc7tfu67rmp
	PTfRRMVsgMRw3seR4HOUJN1iR/1TMkFDnggkyPq/YL8W42zB9UbeVEQK7y6Kh2Pu
	+zNm9k0lw0yt6gQCZDsTm5RnsbD1fvrN8PaSNX/ocSSazTfyfNirwEv2O4mUsSa8
	NFyVHUaX1OLdvb2BD15CemA0CdwvBNsPdu3gWyi3r5kFAA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5xbfaywq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 21:47:35 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c6a5bc8c43so1192777985a.2
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 13:47:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770587255; x=1771192055; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AOs0nwj8LTDPZqYI9z0Q0CT1xulosXYHvvzIwLb23fI=;
        b=dSxAmft9QhskvvztBAGUWSs3d9Md/S39FP7E8jAvJRMWI09A4XddxT9rI4+33auOWw
         jDlCM7pm/QDGJ2tvopndsy558msOgGc/SrBs4x9a0Kxzegjv/LxsfoE94gv1qPz2RI1a
         XCnsep8e3nV1sf1C8d5Pj1OHa97oO0hpkYAiKymduWi/8jWlpTaV4ZYEC7Pa56uF0eD1
         3dSA59TfTI2jXm7/+OB4r47PCSGj2EpguZTNzc2CVNxLWQdkhoet94iAykZUB9jSv27/
         NHfto35iHN4T9dnWQoDW10CEbTxGtC9FL5JhJ+4eUKWodrFthgTiYfOS5SJZxSLImzCU
         MFLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770587255; x=1771192055;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AOs0nwj8LTDPZqYI9z0Q0CT1xulosXYHvvzIwLb23fI=;
        b=aWbUkJvF/DnCBEoxUQwT1Cumz/yDbmM7wk/bnBDqYOn7gI0uMX9Zp5jpu/I/Lz/oWr
         UOXiF+t8Ur8OwvU9fHmWWcrGOZItIMKk1YLVzdxai/xpkOzWxzpEA/+IHLbWw/eKJR0q
         yb/VeiFSwd/UyJ9Ed6+lQR1vDgdX8+KI8je8ZnEaA2uEI6bH5WXQnXGuJ6QDlWO6r6Ed
         Whe+VLh7B7uP+2G5YlqlEmvBO0kd38X8R1Lvf4VtDhj0gTzMxLC/fTqkU/pT/3/yPG5/
         Aq2RrOWv+P0Yt3L0QkpAbXMn3XWzaRHMx/AXg2B5zgN0Dk0ohsaySI4F6IGy/cFHQyG9
         R7AQ==
X-Forwarded-Encrypted: i=1; AJvYcCWN6MD0URncv6OEcdAl6oLm1sbg4fTaEga/yfQwQbv1tvE01a9HpjSAVY6anGUitPl6DoUOA3pXflsC@vger.kernel.org
X-Gm-Message-State: AOJu0YzoChY2oeiVJHmnkaC6127GiGtunyCnCc/h5HUVfeYydyMFg9hh
	u8HSv7T76IHKWodghcEp6+dnq1tMZKiW8m1odlxD3Skc4nAuzJMHoTcg2ongMlDtG6BpkW4/6Y0
	L2qW2Mc3vxvRJz42rIRTkuRIxc8hiZDViA0dccOsQEZ5f6f1zS7m6ag/8Y6R5n+Dw
X-Gm-Gg: AZuq6aIjFyRxB0WdkIwApVtAXAsWk80gZk39t2WaKcKbzTVdleYg/7IpOM0KCKHirmE
	NtZqnPgRBtVrLlQDCNxHoyqJiDFw1TuZdCT/ItmMK8L9EkqD/z41hb/lw0g+M5zH9gBVmu6Eo7N
	iyokiw/eMBKG9pJWIJA5FH7Wm+qj0rJR9bGeqUNrU2YEhBXHpY4lUWlKdK7B1ELREEaVHOPludb
	l2SPStHNx5g63BHuiYuKScngXq0rnH84TcmbCLNKP8k73ZEZfYunqzVEhmx3So3eVnhab95+Mpn
	f2Xh9kVJOOTn03X+i4ravwRZoBvni15E+/C9BW7++e46yu4RV1SodK3VQDEV2e0It6XgGufKjBq
	EldpVWKHuQLdkPmR6CL04eVYgwtzfl2PWkYxhRDWAlTJ9PwVdSkKNgRF9Z8GyHkSsQZChLkKDlb
	L3SHfY8/kloW5eKMh8bRXXOis=
X-Received: by 2002:a05:620a:4407:b0:8c6:b14e:6569 with SMTP id af79cd13be357-8caf0961f4fmr1329102785a.79.1770587255201;
        Sun, 08 Feb 2026 13:47:35 -0800 (PST)
X-Received: by 2002:a05:620a:4407:b0:8c6:b14e:6569 with SMTP id af79cd13be357-8caf0961f4fmr1329100785a.79.1770587254757;
        Sun, 08 Feb 2026 13:47:34 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e49964f08sm1390280e87.86.2026.02.08.13.47.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Feb 2026 13:47:32 -0800 (PST)
Date: Sun, 8 Feb 2026 23:47:29 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: jens.glathe@oldschoolsolutions.biz
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Maud Spierings <maud_spierings@hotmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: arm: qcom: Add ASUS Vivobook X1P42100
 variant
Message-ID: <75glzfxcgnjr52mexcbas3zzm5rykgzuhv3bflui4zrmnvov7w@gmfwegaziikp>
References: <20260208-b4-vivobook-v1-0-3a9b5e153909@oldschoolsolutions.biz>
 <20260208-b4-vivobook-v1-1-3a9b5e153909@oldschoolsolutions.biz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260208-b4-vivobook-v1-1-3a9b5e153909@oldschoolsolutions.biz>
X-Proofpoint-ORIG-GUID: JIs9tgdxjqxYSsRQj5xpeMOQC_S4FyS6
X-Proofpoint-GUID: JIs9tgdxjqxYSsRQj5xpeMOQC_S4FyS6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA4MDE4OCBTYWx0ZWRfX0bkuc+S79PpW
 NCld0nL/ZVTVm1SnMpxCiG/pWGyFJQb/evKXFxL6PV3dMQbMvWJHOiSI2/fPblRRIkKprE1ucG7
 QCh81g2xdwsNVQtsWUa7bCtOSe1i1c/7MvtIpqOF48iQ8ls+SpBG2r+Q54XewaHz474PBrb+IIR
 oVBXpd+ig0S8F8pf7W+wNyPk2FJ2V4x1zjxQE7eCeH0/VBlwuQlk9x7n0gGmuRsObg5ZP3lU4/6
 H00gIsqAzx51Ye+ZhajA8lqJABjkTvkUL7krngKVj5IA9YiCtJr8/O8+heajTU0KZ9DkGOd0aCw
 eQBvT6HawJvLZKfCoDXW5zqkedfft6cNGs/zV+1dFdlRQIEbdGTMIv8F+fXwtt/RPi2YFRVfopE
 79SsfeQj7wXP3BoVuX/TACHIhpxwaOz65Zt2UmlTgtfwCX2251nIMY2ifvkoUiGkcNSMdPtCV68
 T1QrGatCW1E/OCTMdew==
X-Authority-Analysis: v=2.4 cv=aIb9aL9m c=1 sm=1 tr=0 ts=69890477 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=-Yt9tNsTAAAA:8
 a=gxl3bz0cAAAA:8 a=oO66jZH2n4MJNz-BddIA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=kiRiLd-pWN9FGgpmzFdl:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 suspectscore=0 phishscore=0 bulkscore=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602080188
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
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,hotmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,asus.com:url];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263749-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5EE9910A43D
X-Rspamd-Action: no action

On Sun, Feb 08, 2026 at 10:25:38PM +0100, Jens Glathe via B4 Relay wrote:
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> 
> The ASUS Vivobook S15 (S5507) [1] is available with Hamoa and Purwa SoC.
> Add the Purwa-based variant:
> 
> asus,vivobook-s15-x1p4 compatible to Purwa SoC
> 
> [1]: https://www.asus.com/de/laptops/for-home/vivobook/asus-vivobook-s-15-s5507/techspec/
> 
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> ---
>  Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> index d48c625d3fc42f1a90f76a020753ae4daec8c5ea..5eaeda2c85bdc189d650bba82f173810854f5d1e 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -1124,6 +1124,7 @@ properties:
>  
>        - items:
>            - enum:
> +              - asus,vivobook-s15-x1p4

Is it really compatible with the ZenBook A14?

>                - asus,zenbook-a14-ux3407qa-lcd
>                - asus,zenbook-a14-ux3407qa-oled
>            - const: asus,zenbook-a14-ux3407qa

-- 
With best wishes
Dmitry


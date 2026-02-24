Return-Path: <devicetree+bounces-267692-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IM07BLITnWkGMwQAu9opvQ
	(envelope-from <devicetree+bounces-267692-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 03:57:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B0F0181324
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 03:57:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CE82831A80D1
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 02:54:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73D672777EA;
	Tue, 24 Feb 2026 02:54:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="J+8CcWas";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QjtcYK5k"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5296A235C01
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 02:54:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771901683; cv=none; b=p0cTVHqroPuu9yIKq24nDZmK512WYFPBabz4oSjtotiAPAJJt3wTK8e2J/FhrdSqbrEgZmeILqBCP3mF+jTVaGMavCstqX3GGtL8pVpT9JVB3C+Q+S4/nLqzdZ6AFKeFAnTI89kiymoCysusc4HLBrChPQrrt06gZwodWaOqPic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771901683; c=relaxed/simple;
	bh=97BStdsBeGjMH+sbVb+a4ttP+PpeCTMJEIxbNP5KQvE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=paQG7UB/Em0YPJdPqEGoIm667eX6BK3mdBbRhWDz3fEPV87Y8OCRoU1iTnXqDc/NIrzBnSJfNtS7wo0okXwhrfCEkVZ4R8VGi3O5M3Kg5GUXgJ8cX6zmCNWbVKd45gbtQgOolRJiku2lqAu6Dhx0zp3DHhIB97s1PgL2ajOHem0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=J+8CcWas; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QjtcYK5k; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61O2ltFD498801
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 02:54:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9XkSecYegMEin3q3aKMY8xXg
	OWy0NXAxCU1kLloVpyQ=; b=J+8CcWas8eorLY/K61Se6qPRTOdjPY+BWy6N1MnW
	7WlIBkGW7sSFjfMupPzqVB8ySGAnM+b1ky7JGyFkihSQiOv0khglT5RFcVXJu+79
	P8DTqWympek923AXnfPX/pyn8mFEu+WxTRi8quWiEqKPTYC75AyB/z2JbmU4XyP/
	Ct3uxLWIiLesYW8isnc1KYewZ4OXefTFcGBWuVFbGcDwDIprbdgw0hLrDL34colM
	S8Ezr4xbbBoADSjGMyJwCHCry0MA8eTgGMAkJJPZhjd/qYC9ASFuDbIwToMtR0Nl
	exw8aYyXv0LcW2rXuDbVjO1nOKwz+FoIGzi+zmHTb1JVdw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgtv9sh55-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 02:54:40 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c70d16d5a9so4095589485a.3
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:54:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771901680; x=1772506480; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9XkSecYegMEin3q3aKMY8xXgOWy0NXAxCU1kLloVpyQ=;
        b=QjtcYK5kqlKMoMRv5dX1kPXNIUXiZrFmfkCDFLZrdp8t82KdHHggJa/ZJEpOPVMUD+
         seth/bCdYYb/zKTU6r6YN6fp2A5XygDrizWmUG22dj2Wa4GIc4maaT2JnToNpz6bybzJ
         OYYgKSJQxmKsRAIhht6AtQ/ZevOX6QHPStpm4n60TKm6GrFh6S5SopMbLuY2xSlkPeJ7
         E80uGOodB+/BD1U0Ayy9GQuOcygM/cYt0n2Cxs7HUXjt/SDhvDQ5ehIuCrq/XuKS7e8b
         MSTALWNg7ohgpHxqKh1PQEkMX5aVtNFHOZHVlHel5GDgIxI7m/oksV5c5AdDcuFh3OeV
         c4Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771901680; x=1772506480;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9XkSecYegMEin3q3aKMY8xXgOWy0NXAxCU1kLloVpyQ=;
        b=C2q4T0fEa+eP2yapp1noRMboaSv526dTUl0CflCa2pc1WEaSdL1Ba7tFNWIdVZTPqQ
         GKu5a1eOkPWqAO2Tr1sLmt7L1cniuZJXggeoAEuEuFqNZIaRMAR/TZylSUUHisV5LK/h
         QQtSutB7uSXx5SVW3GTFdF4ASURYRhq00oBmnFGPM9MsTSE6kGbtXLuKm+EcgnFzPZLd
         p0HHuRQJKOogiBcDLeyIoIwSpdVOJDYChWaJycWFHvNasccDelUD8F3EJyeVcB1E/FLQ
         OHBMa+kw0+ndEuzVNzbmTgDCeb1GKzUPP3Rxlj70rk+3acUgAj/edXPUqIjyoIjMn5IP
         0OIg==
X-Forwarded-Encrypted: i=1; AJvYcCV6RIdWhi9TaXW8dquQrLqr7bDeIUsxulfFpWkP6wElmPWPw5ILCDsjwTbBCMHPTGOTquGoJefPvmyT@vger.kernel.org
X-Gm-Message-State: AOJu0YwIzUAzQZGHYKEqbjs8vzufI7uBRrqYIfeBgmGdAVC9oRk02VSQ
	argBbn+dBbIhWKOrpT5UR3C+RNyhWohqJrqViGK63/KTo6HGySZRH3C1PVO1ECUr/R1ENlDruXk
	bJjikZjc3FaGxIZvLm5EVcJ92uDtenBCwFT7IstbMfdFzBTFxGjJmJPBot0etM17s
X-Gm-Gg: AZuq6aIoADq9yeZ4aGw5S8U0AsDNgcbAChitckoAKKwi3lp0To32u5sap7EKU3cg8WR
	4rFqm1RHZ5gtKys19QrR/AVNZczbimh1xCPB8Vn9jE0geXMR9LMVk95xGZUoy33K5DteXPO4MRL
	QmJhd+QXt39tvqa7xqRJ8Qo2hNTysB1M/2GLsZekbuJcY2aWEvGQtyLWMth6i9MKBnVo7gsT5Py
	2gnY/FmuMwr+VFRl3MUopYi92Bt2G4S60sWyfwmXFDPIgH+HjKmZhRb/4zTEBJHvYUDlwtq78bh
	lZM3ygTy81vwfOxaM9UJFauk2ECupw8LF24JNaOd7TNpfbfsvQM37MtQvwUQcgk1HKdjb62FaUa
	GgWiInT+eqSkSm8SoWdDDkVzDQxNU1VFkpGXmp/g9/latv0o0hYVrozSKFRQFZuZZ/bKs3V4Pix
	xT5wcPxmsSa0ZFavUc2QOx4mIBt6mwXi49h6k=
X-Received: by 2002:a05:620a:1aa6:b0:8cb:4d05:aa43 with SMTP id af79cd13be357-8cb8ca8334amr1285552085a.59.1771901679755;
        Mon, 23 Feb 2026 18:54:39 -0800 (PST)
X-Received: by 2002:a05:620a:1aa6:b0:8cb:4d05:aa43 with SMTP id af79cd13be357-8cb8ca8334amr1285549785a.59.1771901679321;
        Mon, 23 Feb 2026 18:54:39 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb16302sm1921315e87.38.2026.02.23.18.54.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 18:54:38 -0800 (PST)
Date: Tue, 24 Feb 2026 04:54:35 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/5] arm64: dts: qcom: lemans-ride: Drop redundant
 non-controllable supplies
Message-ID: <leyth7cjzpfcsyhlyehezvonhgkzvy4xhi2xdlrburkup2tdjz@ghnbl3tq6kqp>
References: <20260223-qcom-dts-supplies-v1-0-f90ac885b3fd@oss.qualcomm.com>
 <20260223-qcom-dts-supplies-v1-1-f90ac885b3fd@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260223-qcom-dts-supplies-v1-1-f90ac885b3fd@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Vaf6/Vp9 c=1 sm=1 tr=0 ts=699d12f0 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=YQIQ00YL77e8QyTPvtEA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDAyNCBTYWx0ZWRfX8W+jXK7uK1/S
 mtlgs9h4gEhHufFsNgTtMLxfM3mu3jpMItIdqh88o1ehCZegIUdDd0sp0G3TzqEzNIHGhwQWEMP
 q3lPtU9qJIc/n1o1p6fXJzn7CCRHdUAlT2nTg7H9iHGorDbqURYQWJGTZ/DlCeeGV9gs15yImop
 3a/m6vq6AYXTy0ApGrXkBoY9TWXcPAD56HLb0LAOkkN9rrTtmrv+/XAxbE6Y/wAgELKg7kvgy1V
 vV7EZzet39aR1I1hyAWO70iClfwxTetE35phXF3nPdwp4MMYewE8MSrpTXadItJR0ZJ8BKGwEkO
 ZyxZpeIFNQUBg5G6I4biEEXuMFpz1Tu4t6x/CR2/7eEELLF8I+gHE5RxVCnaxEQxoH/WweAWu8/
 mcxmpbNhQsw7Wzp+1/y14+JQdOB9r6nBFpfFjYJ1/GEO2ULFgChwKsDU5Lz3k9LKKb5zxQLKucq
 5Jc0JXCUfdyFL9aoV2g==
X-Proofpoint-ORIG-GUID: ya9ro5zSFIb2cPqvUXsktMEMTNC4vqPH
X-Proofpoint-GUID: ya9ro5zSFIb2cPqvUXsktMEMTNC4vqPH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_06,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0 suspectscore=0
 clxscore=1015 spamscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240024
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267692-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6B0F0181324
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 03:54:17PM +0100, Krzysztof Kozlowski wrote:
> Drop completely redundant non-controllable chain of "regulator-fixed"
> supplies, which serve no purpose except growing DTS and kernel boot
> time.  They represent no added value and because of being completely
> transparent for any users of DTS (except the bloat), they should not be
> represented in DTS, just like we do not represent every transistor
> there.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi | 26 ------------------------
>  1 file changed, 26 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


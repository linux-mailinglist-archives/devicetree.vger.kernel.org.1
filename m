Return-Path: <devicetree+bounces-260517-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8JhWFhE1eml+4gEAu9opvQ
	(envelope-from <devicetree+bounces-260517-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:10:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B0DA5391
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:10:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4596830162A6
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:06:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C43F30BBA5;
	Wed, 28 Jan 2026 16:06:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nID9qwAg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="G4gtpb0W"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85B6C28D8DB
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 16:06:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769616408; cv=none; b=m55XLk2ioL1XWltDXFUr5taeLdGT63zO0jaE/7dzxO+8Rj17QrcOHD4lWm0RzeSTlI1cSGYaxNdFZSoZRx0NvakntZ/JtlANTRTIGwJTRz6EjiIMRmeYCZk4fI4QFLZ3kaDDEC4ib30wmdDxNuCLHIpSfEPe3ZXb6HPD1AXydLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769616408; c=relaxed/simple;
	bh=VW/qc4m7QYnWq8rGr+uR7X5ZxtSgkDmixXSRRjkvsXs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=M7SMPYdZoTu+RYYxjiQh37CkTvs6/KlnfXzUhVMNBKzI6i5k7VlXCWV3uejcx4h5V2s0HboqAmd4h8nXIZLWIjYefA+AAWI+2763OiOymXaasoAhlM1Y6HMxFnhENDTQ2bgW578R4DC8vqFFnB7MQYF/Am9AUUQA9COjpVHceDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nID9qwAg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=G4gtpb0W; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60SFerBo4008468
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 16:06:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=XHLifZ9wwYI+BPtJUCR9DVIO
	9WGqye4RlpIupw/JkLA=; b=nID9qwAglbIqC48REmyIsR5BGQea+I7x+m84TSH+
	bH/L/m654Lj4V0/Xyp/5QMa/G8WfZUw0pTjOTK4E3rVFRTnDOXW6U1P8dl29W5rH
	Yj7MHAnrV9MrcBDc6QUGZLtCLqUHDJFax8v0CmdPSjEYkCvQQG7e5G1CO02ktqV4
	hbxK7Fp6MWJJL3F1CvoCosHwKXfZsCCgIG6XH3tzyD/JtuxiO9UQ5d2KSXPQzx6K
	HfWMCEumtHBcKI/YQZFDLJODITOHF+acpXVhZrPPHPBCAB13LkYTNEsjQaKVgQ6q
	uQbDhdy1ns5zwTvOCOfbhYkwyGxQVTMototqE7Cv6B3zHw==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by1jx49rr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 16:06:46 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-5663cd97317so6796656e0c.2
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:06:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769616405; x=1770221205; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XHLifZ9wwYI+BPtJUCR9DVIO9WGqye4RlpIupw/JkLA=;
        b=G4gtpb0WpVoZy4gvVWWHo6Ex1JTbajju6N0WeCrhZL4mla9BcnAWsyiuvwaAJPptuU
         UqWLmY6gdjjFro5T9PrWqgCzcL1VhxYuzZ4IKM8ypgbPUsV09bEx3eRyDz4OnhpUGwN0
         clYcRh2WaDfzV9KAV8jPlv2pNlMalhsRbF5JjH1vbAJGF3Xe/5RX+Nb8Z8DnsEnIr3Mm
         yZBWWHO3QiehU6qM/T5Q2e3s6VuME0ZjiplOU5j+gvt2eHtry71ZKtkatA/rw7U1CEHx
         V914fWMI8LfmLi9Ef74yH9zQ51o/z0zqJb1ct6RTwJMeMei8NGQ+hPcmAYNi6RQi18hU
         aidw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769616405; x=1770221205;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XHLifZ9wwYI+BPtJUCR9DVIO9WGqye4RlpIupw/JkLA=;
        b=ClQmNWWcBtDg+U6Lkq6aWxkcRPrvwxKBpU4PBuGK8mqnJV7gUjL/hKXkUCJnkRsmn1
         oAF+UMAqKgYWsoJ7l6OOpM8AWGHgimFa/Taqo/NqzQnDzB3PNeN4lbHqLCIKlPecjoie
         4Cs6PnkNGv5eIr3dkGAMAf+bEqZDJa4hbaoRUCrdUDrfSnE6oD1eBqH/UBCXHKBVJyBv
         rhEnscFRl9vChRj39Ny7xhCDlMAcMKmdW5ep3rU+hYaGhm48lmbFeXgaIotEVqQTymcq
         MDASk1lCTQIMxKc+8POB+omHQp8Y8L2rcLg1fwNNSgIK0Ou/GIREkG8OAC1jjWfJEDAA
         MJ8g==
X-Forwarded-Encrypted: i=1; AJvYcCX1pWp6jBdRXgj3dGDGiZbzwsw12Q5pcEYMjsMvuihgq3pID4VgZlBurGe7j3/etlZFT7JYgHJMqbkg@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7Pcl9dPhKcf18QoCPh79N9WesLy8OGjATcI3KNEIU6k42BLpc
	IzJxOSiq0n9I505swWr6GKWNrXQqkFNuzF+9shVFM4mfGUzV60K4qhqtPmK1A4/f0ssVFWWnonk
	Poi1xMG8z/lqMZa0PZMdu23mcdwPnCvdYjPC3vy48fOhz3ANGSZASouZ78iP48Lz4
X-Gm-Gg: AZuq6aL5ZLlHESVIqWssoBqSYEJdJNQuwJDl5j4ouh2ReD8jns2ywcsQGyCzDTG9xOh
	JfH7Yy37Mwg+q8Uq11MjbU3QYJs+F8lsCRW4dZAgSwpjV1L5buD1n5K/PgtrtrVM43jSWNaXLGz
	Usa3xvvQixva6gCGHEEjSZOQZYUlS+fpm4VyGIV5Y4IC0EaWOLcOTquwB6zLthkRGARfeR+VQAT
	qjLVgxEAo+tBP2MMbOkGXqk6atklGPRYiOlbyfc5XEb6rLMqpXlG4jej5pg7AXAop/2RcW8FeYN
	C22LYP6+zS5lzvDlf87b7e4ytSMu+z6rwFlEhBEoNXUTRn6QpGEzfw2jfXlrq/O+57TH8TQ34FN
	gn9ZKIhowrL8huzI2M/7nTGddmFOTHV9Yn3edYUR2D+/jn4Ik5fmheFGTUQMVM26XMXugLdcUZx
	Brz+XPhcnzSXWo8sO9Q3C+BBE=
X-Received: by 2002:a05:6122:210f:b0:566:24c0:716b with SMTP id 71dfb90a1353d-566794a81b7mr1704495e0c.3.1769616403841;
        Wed, 28 Jan 2026 08:06:43 -0800 (PST)
X-Received: by 2002:a05:6122:210f:b0:566:24c0:716b with SMTP id 71dfb90a1353d-566794a81b7mr1704396e0c.3.1769616401913;
        Wed, 28 Jan 2026 08:06:41 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38625f6c670sm4378361fa.32.2026.01.28.08.06.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 08:06:41 -0800 (PST)
Date: Wed, 28 Jan 2026 18:06:39 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>, linux-input@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: milos-fairphone-fp6: Add
 vibrator support
Message-ID: <w3e3weyxdp3bi6mlxa3hvtmvbtuyddaj3hfn3urhixtliejhsx@h3wqvscon6n4>
References: <20260128-aw86938-driver-v2-0-b51ee086aaf5@fairphone.com>
 <20260128-aw86938-driver-v2-3-b51ee086aaf5@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260128-aw86938-driver-v2-3-b51ee086aaf5@fairphone.com>
X-Proofpoint-ORIG-GUID: nc1EowbuNrZQs_SNNd5DRbNYz5HFS1dq
X-Authority-Analysis: v=2.4 cv=duPWylg4 c=1 sm=1 tr=0 ts=697a3416 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=7WDzbpTNP48-5iC3XZUA:9 a=CjuIK1q_8ugA:10
 a=tNoRWFLymzeba-QzToBc:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDEzMiBTYWx0ZWRfX3kSGMpDD+gIP
 Ot5aGSLyaNMG73CS9LMgQivKR7h68H5KcENxNrdSw2q0IbW+fUEoX2mXWNVbB2883lO7VR5tksT
 +3QgddJklpYHj2Bcu/nZAvMVgHZ3OG+JJ0ennpMuGEZeI9U/hcYKKMTw3g6XBaDPhvT93SKrjZF
 yrpwT/bjSVfDnjMuGzP9Q2EOTwrABkNAcF9bdEZ5IwskHrJON5MVQA7qX1YOzO4SaidzyTi+O9U
 Q5OZWWHDT8Ys5UxdcN8+TmZu/mdrOEyopzK0PpiykntSmhebAy51hLraRrCKbOZLn716V2D316m
 7/z7WMxASiATwluRD9b17fPzDADfROr+1dcMpbZbR2Bqn8TP1Hj1MUOQO9H20hzzEtSt2goEqsM
 Vk0MComZP5QltL8QkXxHR96K9sODDrgCgjQZhSB+778Vs+goYDIkLOw7HIC+RZG3tQD1Z7HMSAj
 d74XBsCNff/XLstw7tQ==
X-Proofpoint-GUID: nc1EowbuNrZQs_SNNd5DRbNYz5HFS1dq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_03,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 bulkscore=0 priorityscore=1501 adultscore=0
 lowpriorityscore=0 suspectscore=0 clxscore=1015 malwarescore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601280132
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260517-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,fairphone.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,fairphone.com:email];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D2B0DA5391
X-Rspamd-Action: no action

On Wed, Jan 28, 2026 at 04:51:15PM +0100, Griffin Kroah-Hartman wrote:
> Add the required node for haptic playback (Awinic AW86938)
> 
> Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


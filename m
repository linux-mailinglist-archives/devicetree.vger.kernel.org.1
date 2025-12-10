Return-Path: <devicetree+bounces-245576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 48374CB291C
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 10:34:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B156B302ECC5
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 09:34:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55BF5296BC3;
	Wed, 10 Dec 2025 09:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SXWsDUKI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="d+SpaOIQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2F12283FC8
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 09:34:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765359274; cv=none; b=ScrvJdFwGBKpcHQwSR8zmHhDWTB6xJzbTcHRIF0tBqj+BPbarJV0WZj0GJFXzCFbe69f7QDQK1shaWwNslhpteUpcD71Bf4Fs/Jec0Wb80RRQh3H57Ad0MhFWzOgPWzkaY2eMmGUr5Xw2ccTDakrYuWw93G3ioEb3B/uz8RjEIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765359274; c=relaxed/simple;
	bh=K8Ktk29wG0837YMw5/6Hjk6C7ucXIM600B9IFlBHgLs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P01sdkacodmPUEOuIW3LADM5BoG2GmH8o1/0G4wNXMFqHjPS+DtutwQ/E4VWBxsdiCAQ149Q03+QlZGUDR7FqmZuz7JKird6KBcUdQNG2vGQI48Blk3NBbifM3H7aAlzxxgQ7CWuHUNgnzA9p3SV0o5KRW4eThORGMBrYbhTrMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SXWsDUKI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=d+SpaOIQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BA8e1Xr2493206
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 09:34:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=nLIuiKI9f3uhqvvCkT23dkW7
	JCF4Jb7RHeBSa0lWBeY=; b=SXWsDUKIHQaY+el6ss8G1LPcVpbnXRULIpSQMEM2
	Aem5ICghSFHJqtKnXLp4oNWkD/qDRYl2qJTwAspl6kzKa4O57Ih2AMf5QP39Ii2x
	y5YiHa7kRiepebP6Ih4CKAd6+cg82kwlPYV+/hDn0dz3D56AcMOl7uX9RhVq4h3r
	DoI22yeD4v5OhCrGkqhn1o+eIfjPXq3fBs/7YwXGol6qAAaK2hKxmF7W+3McZEFn
	B0nEnN4TuAviCljLInA1+ozClXgY4FtWCxwtNRku+icehKZ2dbRcCy0jhuy20evg
	T2sPYebgjWHz1Iub87XI7fJYzfyeWzjl2aC0oaKKQFWd1Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ay1xwru9y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 09:34:29 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b2e19c8558so1290510285a.2
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 01:34:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765359269; x=1765964069; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nLIuiKI9f3uhqvvCkT23dkW7JCF4Jb7RHeBSa0lWBeY=;
        b=d+SpaOIQE2gi+poqOOhJmxe0DLarXxbmBIfaFUz4nDn9X4usTowrBZ61Sfv7zPjaxp
         Qyo4ZVLiYSmpohyVGg9wbo8F3uHg5qh6DqhXmvSVHmDsZ+2T3PLhLUVWPvhvTvXQMhyq
         sX6FZ22O5bI7SnY/bNZdOFQ/6+/6KyCFg6ckbkTkQ0ieUodecJGmfd34fjVgnS8LyP7F
         hrW8MdTgHTwaCc1S31aCmE5umyz0TjuCYMftRJnjQuh09emKMeOzLk7oXjO8H+4o5BGy
         e6Tjb0p4CGvyJAaP1T3IpscnvbmiX1pRjw1tRAZln0MiAbjsIcL/hIJXoy8pfJPtUloW
         R8kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765359269; x=1765964069;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nLIuiKI9f3uhqvvCkT23dkW7JCF4Jb7RHeBSa0lWBeY=;
        b=BlT8rdwn2P75jh7v2uNDHWkN5ZLfcGogfdZyLEW5mi0cOhyZurm8bSJ5Mycg2dPbLM
         4gAHdkt9xlwdJW/l6CgPLQH0UnV5uS7gOAN5GHgHWQMleM8mX3pGqLj0HD6cy9idb4RW
         QmOWEXmj+m7wzjFdLrlmWU3U11gckOC3vtqASb6KPLXP8LvNI3bWaT0iSpioAvflDLKu
         1sKUuZHgJ+97wUxxEd5C4TsJE2rfeBErQN1WdBenXdbRIGz+XDCvw8zpWwXLLjQvz4jt
         iKdrjraiDKOYdIJeQB3Gci/tp21LQaqpR1SQk66O+4aFWOECrD3ZgrhkM2uzfGaejRQA
         TREg==
X-Forwarded-Encrypted: i=1; AJvYcCVUMPPeMuOednOppNNdJQg5apCwmo2VaFSdUYL3sPq1+SDB9Ip3JFk1jkWGoySOEcvYvvg9vjD/8gZw@vger.kernel.org
X-Gm-Message-State: AOJu0Yyk/lFUE0quLeQy0qFHNYqivkjtreZXpZXd995LTtEasaxHzhv/
	3u/5+ZP0PmCUyb5OFv0sBaWkCxftoqYEOC87KDi3S+Hmh/HdNIAsaDFYOz6vpHIf6bnTrgvWuo0
	NbTyOaUHYNQVas2zKEGK4csR56EgoWeM2J92nH96IZvFwa/xmj5ZvFE9Sdk9OsuFftFUluQG0
X-Gm-Gg: ASbGncsAnM/KomCFtPRSqwEuCfu0SoQodthVSrjDwBR3vWyvV+O6ZNGYxmcuSMn7f4t
	MJn9znMe2dYmXe4iiFAaMPJBuoQtymlv7cADrJK+SmdpGozxpS5PHKeyBA6H92xCGYjz95ip3Dd
	jB/DzFJwA0nIaN4oN16gdBEPjJN54Li6c5w4A53/BunrVCEBx1BmxcGEHtrEn2UuiGayXvytgpZ
	+AQ/qS2917B0gvLMenbGeO3oUo3FyOoxn9MiYkcq4MOPO760KCWXyvunLDNvLyAyEikVhCbnQ6z
	9DGBD9Tyvg+3OObwFpJUKanKn2Hb2S3r++V3/TJQNFIWdAQJHgwQDr7QOwd/pRnCyFYU+JwTAsn
	SxfgLIPkdTrCbYN+PpHRmig==
X-Received: by 2002:ac8:7d88:0:b0:4ec:f9a1:17c5 with SMTP id d75a77b69052e-4f1b1a30053mr19154011cf.10.1765359268483;
        Wed, 10 Dec 2025 01:34:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFDeVqlUuRLhGJTrU6Iist+YSKg/hZLzAR5AkOQCy5T+Dviv0W1bkWvWWnSC2UV2RakIsL3Fg==
X-Received: by 2002:ac8:7d88:0:b0:4ec:f9a1:17c5 with SMTP id d75a77b69052e-4f1b1a30053mr19153861cf.10.1765359267845;
        Wed, 10 Dec 2025 01:34:27 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b79f44d3d9esm1596754866b.30.2025.12.10.01.34.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Dec 2025 01:34:27 -0800 (PST)
Date: Wed, 10 Dec 2025 11:34:25 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Harshal Dev <harshal.dev@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Val Packett <val@packett.cool>,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        Udit Tiwari <quic_utiwari@quicinc.com>,
        Neeraj Soni <quic_neersoni@quicinc.com>,
        Wenjia Zhang <wenjia.zhang@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v5] arm64: dts: qcom: x1e80100: Add crypto engine
Message-ID: <sr45crjfafbwgxeykod53ct2n2yy527ldzufbnspl7bc727lpe@efstp7dz3omw>
References: <20251210-crypto_dt_node_x1e80100-v5-1-5ad22a869a56@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251210-crypto_dt_node_x1e80100-v5-1-5ad22a869a56@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDA4MiBTYWx0ZWRfXwchvLP/j+FPH
 mdJNJZ2+D+B/hZ3ASZcjPlBGVAFCXq0DDIshdLaSq5z48mpqLVQr9Ha3FBasxB3uPspT0dhXAbZ
 xcUNTY1tWnNtzhjqK9PXorIdpy2bMaz/OFlc2tZ0BH0u2V7/SxijnaMIBbw7dgvlHXKJqS/fod6
 drFRuPUVeYBAfNNVLnhqWvC+o9l9yaHA6Sqx8MXeYPLOaUFz4TRAOLBX6WibbdMrpYO9xkQGRy+
 9q7Lfj6edC6P6j9JpxkPuR/aYpI8wczbhG1rf+JUQP7S1tIit7NGotHt2lkvk3Y2kgcSrl+3Ccx
 gyeYC4IM/dK5pTcl9OFStKOxs/KUlz0qEE28dClKUBz+VCTFDb7qE5riLNhT42L4SD98PZpKfdM
 yGnLj8EJUIA9SybXkpSxM3sD64lc8w==
X-Proofpoint-ORIG-GUID: uOtYzqrDKBFBzAfHS7UhQmDOivGsR5ov
X-Proofpoint-GUID: uOtYzqrDKBFBzAfHS7UhQmDOivGsR5ov
X-Authority-Analysis: v=2.4 cv=F/lat6hN c=1 sm=1 tr=0 ts=69393ea5 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=GxKyrKa2EaMeXejysu8A:9
 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 clxscore=1015 bulkscore=0 adultscore=0
 spamscore=0 priorityscore=1501 phishscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512100082

On 25-12-10 10:55:33, Harshal Dev wrote:
> On X Elite, there is a crypto engine IP block similar to ones found on
> SM8x50 platforms.
> 
> Describe the crypto engine and its BAM.
> 
> Tested-by: Wenjia Zhang <wenjia.zhang@oss.qualcomm.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>

LGTM.

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>


Return-Path: <devicetree+bounces-270789-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UBO9FpNip2mghAAAu9opvQ
	(envelope-from <devicetree+bounces-270789-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 23:37:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B47FE1F80DF
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 23:37:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 81057303CC2A
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 22:36:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AE86366819;
	Tue,  3 Mar 2026 22:36:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NRRoS4pH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DazV9GIE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2EDE35DA71
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 22:36:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772577387; cv=none; b=aLzZcbaEHtTgsBWl2NkRqTWwkiK/N35nLQJeNufKYtYPy6bkx9swJJjuaOLfhhCwViykrSySvbOUysC5l3gfhFjdFbvwp+tuwIaFIJUq9wUkFgAWJhbVUYWjrmH5waShiy1cF8zEooq8zso3GQYXGsZBAH6fF4nHZlwio3J8WiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772577387; c=relaxed/simple;
	bh=SyM9QBA7RYO1BtpX+5iZni7q+ZyCtIVe9llbmwTyqLI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y6mqnAE3GhToNlTcnEKU0VrGWm2oFxCblENW4bsH2yE102+3uQb+rgYiFCNBFTqJnP5R3VzdTGnWKCPoxCBXXrQFoUEpiBjn2Kipcxh3fksikia0MGgKR88BxO7hR7qtJ7WwEr9hovXcA+u8FTMYsnMITOyVLU3FMIwZNYv7jA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NRRoS4pH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DazV9GIE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 623H0B0I1256448
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 22:36:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=nznk2c2Tf35wTgdPzGhLdlzQ
	vmTxLiTMm5AGDwUvVas=; b=NRRoS4pHNoYu5SgLY/rSJ+HY0T80/nMR7TAmQdNb
	QoAhh5sEnX4ZCcc8AWW45giw1ZNC3X/e3IFB8K6wf1sx4knHUev/+UtrXxLqjNBg
	OptFpiHUuPHc+rx/GCMTFJUW0RBvMIyA530S2P/Cf8znL9FqfhUwl3Q19Oh5+f8H
	IbAxHtI463ythm+6yv0TqKA+YwoDM/r69D0udIKW4mKWGpMCfjstoUxFNT2oYuvj
	OgVAU1jeaRyoPIEkPtBSnMyQfgyLxRf036iEIdqhJqmYO1RinKTeQNodSCK/lH1w
	sDF6tHdHHakG/GMQXQ3h2BHBx8NNKX+ToFv8N5VQjSImfw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cp2c9hewm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 22:36:24 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-50341fddb89so464690371cf.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 14:36:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772577384; x=1773182184; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nznk2c2Tf35wTgdPzGhLdlzQvmTxLiTMm5AGDwUvVas=;
        b=DazV9GIEmdyv1MLwCw8lceemtnddW/lVw3d3HNO2/9Z/l5So42GqoFBb5ZK+j4bhTZ
         P6I4Qcg/8dm8Yq08W4FN21tioN6hbswJj8I6SxzIuzlmNhanAnzQ+0x7jNQCCLg1XI44
         ZBIt8GKuodsnq+35t9TZjCyTHbxfSqKi85cYoHPgAJyFgTcS5js1vLaGksXy14ANy65X
         XQ/8Gyo5/8S2/ZRIJSTHwAvxg1gis8ECpI9IVUnF/v6sVPwr5j0bImUbQVUtnaP90NsJ
         9wt2FqXtRNZD8u61j/FFG2T6GIfFrfesUKJWNErdCTbxus+xW71ML2JK1RAFgfQXXH+C
         pDeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772577384; x=1773182184;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nznk2c2Tf35wTgdPzGhLdlzQvmTxLiTMm5AGDwUvVas=;
        b=r9ba4gXMNDQh+dxAXUAudMUp8LJSremj6Ejmg5dZ2/3kf7JmEKBVWOeqKJSIewiZsL
         daRR/SVYfGPbkfNhuioXSldJiOIZGemGhks2Z68JLf05ZqSNeJDg8hsxNQlHpTcvazGp
         WE2jBo7p1CzY25NT3Wj47rPuZXWFbgF+8LE1huglcN2Lvo+qxXFMxm9XqunGF9ldDpZv
         mGSu2fmiWjEdkY1SLzZ2W7IxQbiIxCZn2c64H1CrwzexWFFdDkwoJwuaqclP/OG392N4
         ST89xRZscfzOFkfcy8xcknHeKwjQBGcE1N5X/6owzKEIsnsMKO12u9n/ybJk/EfF6hJF
         ddEA==
X-Forwarded-Encrypted: i=1; AJvYcCXuk0wZjUFMsIy3oFFwEtThabxTUdET4/nmDIR+S7ohKqrrjeY87NuNJu4jRJenpiEw5gZ4EJnRAeEM@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7MZELUJMqo4O9iB4dWd5YlM41EInGzm5guAKYoHwi+aUOemHw
	n9SQrcY8EhUOPhXIuFdq5TqMnDRDbYMqCz7AQ1e8C547T4kE1pLis+TtHf4pFuXTxU5uc6NADWz
	4mf5PqKuTnZmX5hAVwEAbwosHsNRqlm4EFjMNSM+oZQ889eat63ILiosJ6kmX7mOP
X-Gm-Gg: ATEYQzxo+FUu2p1BkEyfRq5WvAYvkupPtatl47cBFpb+buoRQVLkNXBp2yRhg9yIIxA
	5FZevSbPckZhbiuIpLNBHjoxcTo4FUtqAJfJq1Gf/69NxbpxJBMC8cJy3p4AOhe31OqqqiQW8U7
	fKCkr82U4W90dxYHNHdjgKSZfWtSuM0I7F2gNgUau0wLN71lbrB4WorBIb/dK7yXfu1wesXKGne
	2VdQSpJCfn3Us0V6dSecAKFvYyq/04L8kFIGBvP7cXfmYnfcm2creGKn/SB7GIwa2z71CMok6i3
	sK8ipgEQ1hO2ZdqG90gRokRAhGm9ewMx96waCirDrm/GRmELsYpiFBOyVH6y0OSfZ7rs8KqTuER
	nuQ831D8p5h/902uQKhTqUr317HxHtgkoQts0VHT6bP2wrP99DjDIeS20M6/bwmqXtMc2IkCw+O
	j7tFcZ+y4TER/K2oVsTL9yq3bCLW5X4Yv9T7Q=
X-Received: by 2002:a05:620a:4481:b0:8c8:753a:7d9 with SMTP id af79cd13be357-8cd5afa6807mr1323085a.66.1772577384279;
        Tue, 03 Mar 2026 14:36:24 -0800 (PST)
X-Received: by 2002:a05:620a:4481:b0:8c8:753a:7d9 with SMTP id af79cd13be357-8cd5afa6807mr1318985a.66.1772577383749;
        Tue, 03 Mar 2026 14:36:23 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a1237b81b0sm846821e87.50.2026.03.03.14.36.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 14:36:22 -0800 (PST)
Date: Wed, 4 Mar 2026 00:36:21 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] arm64: defconfig: Enable Qualcomm Glymur clock
 controllers
Message-ID: <karediuin3z7csuss444abn7gkp6fq64zpa77sdssfo35qkd7a@37anzyixy5eq>
References: <20260303-glymur_mmcc_dt_config_v2-v2-0-da9ded08c26f@oss.qualcomm.com>
 <20260303-glymur_mmcc_dt_config_v2-v2-2-da9ded08c26f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260303-glymur_mmcc_dt_config_v2-v2-2-da9ded08c26f@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDE4NiBTYWx0ZWRfXynxtzmGu0tIh
 6VIYcpqaLPo/11lt+CLfSW1IS1e0ne4Ddzs3bPwFhmFMJIwishhyVfFk0yDfe9LoaDNY9MZ1VxA
 rA1cXVcEXM0ihq5YCeI/tjlCfmJzfeVOTkFruwJxzVFTiKd3q70TsHnU3Gt10vaIg45IfLhDDiX
 QAZV4f8LvvUCb5y7w76BPKxgYl/WimBdY3JB9m2aY9LqnL/OWdV4coEudQ73DOB2Mq3W8SlvdAP
 RGIiu15HJyDyf50JoP1JlF72d/slbPyUik8SqPtXR3XCDeMY+X/flshs+XcIxt/Dk1OUyPaKLgR
 3DBqYcjBKUiK3sotJRgk5uqyYyr2M2g8VXxeu9aldYlETzLlOF0F7/wTA4LnVulzLLsQXOvZcj9
 kbyuYKZcnH4pNZi0hK0zetwjnluJ37H0CwJ9jRtXY08FaDuT6n+JJ+CRWn8Gpa93CQza9RCU9gO
 2itegcB+b+6jA7LUgAQ==
X-Proofpoint-ORIG-GUID: xbd5ILWVtRqx3PrTlK0k8pPq2HscJfa4
X-Proofpoint-GUID: xbd5ILWVtRqx3PrTlK0k8pPq2HscJfa4
X-Authority-Analysis: v=2.4 cv=EefFgfmC c=1 sm=1 tr=0 ts=69a76268 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=LNhoa-OYLXZSTG7DddgA:9 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-03_03,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0 impostorscore=0
 phishscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603030186
X-Rspamd-Queue-Id: B47FE1F80DF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270789-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Tue, Mar 03, 2026 at 11:22:52PM +0530, Taniya Das wrote:
> Enable the Glymur video and gpu clock controller for their respective
> functionalities on the Qualcomm Glymur CRD boards.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---
>  arch/arm64/configs/defconfig | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


Return-Path: <devicetree+bounces-260233-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJcPAYDIeWnxzQEAu9opvQ
	(envelope-from <devicetree+bounces-260233-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:27:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1659E308
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:27:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EF45A3006B5A
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 08:27:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B159330B3A;
	Wed, 28 Jan 2026 08:27:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ExfT6jRD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="icc2uYPC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4530AEAE7
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:27:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769588861; cv=none; b=SrbU1CV0IYOOq7EecNXPT0Fb5cBPUxU/Js3QPgF9IpJJFVgvVBThLSvZwNrgvykMttANzstxCtEN3RSkspCkUO/dbJmyq6k4eyHhdre0kiiZ8LRnCpsUHxo4YB8UXGrloPKFyjsIUuRJrwCHnJJxyXsRniNmiB+9z2x+dJ1z90U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769588861; c=relaxed/simple;
	bh=kpveHU+X1lFjdI7AcKZD7lzKt4jCrS/Y6epQ97Hei1k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NeaTse1r8CSn2ZLmRzti84rd6G8qfVI1Xn2pw7VHEV/bw/sJwNbi0vspFaNp9ZCDjI7jPsVwmGGyxUU3zJa28FCGBmOIy6OrBgO1cMslmMWNtdZKobF02ont1R4o0JTmHd9BApUIYt/PyVtZBUtT7oHmB29tetFgkZIwb6Cz2rM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ExfT6jRD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=icc2uYPC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S53cA02436529
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:27:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=cfH8xnb6PUnLEV9e8I1zVQbJ
	iQywxWkoNny71+9vJtA=; b=ExfT6jRDv3EgIjwZjlUFm0xn5tKxCQ+1/FropoGN
	ECRX9UytOe6YURxlWGD8YxbB8YvDfsI6vlJIHuAVVnIDo83XhoOUOGMAzzvrfJ4w
	u5bYfKZ8qj9v7ETxIBgUx1SE+1HqcrD5cg1AO7zQMBE28DhgJg4upkS6kdTFjh2T
	mVQVxKNtrz/Db0Cv54oekRnQpQ8O5C4UC8cBbW1ifB2FOxglDBS0IQ/1K8unywdX
	hSMnNpahElhn4myianipujq0yvq4ctpHtK6aUBbvFwdyWRrSP21J50cCozuFcHhh
	Q5zU+IKCbzgZwMdivjD1ZtNQ7+OFLf8wHGyC5AKlqZQRpg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by355t6x3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:27:39 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c277fe676eso1878919285a.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 00:27:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769588858; x=1770193658; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cfH8xnb6PUnLEV9e8I1zVQbJiQywxWkoNny71+9vJtA=;
        b=icc2uYPCRW1qM8f0XpboE8HTUZsdCIQJk1ynUIGKk/SWuxuRhcM2x9COiNqnjFl8eV
         GrxenRwluvvpgyUNsMH+tpuDuOq33Rk8Br0VEMV9msRFt79RgloQTaBLqM531dPFWb5p
         zMwd1F4etF+z2imdb4XAUAHgGX6fPgXt8e6e8Wdn87jDeddBvtSfcU8i4mojSbby1rRu
         JBSMpqrZzVtFPxkIZ8IYr9R4ktZSqwjBDdi2kPUVpW6b6zPBC/vXwdXbj0bE6X2eId//
         BRnqVwly6a7lY9fxnoLWhkjcGB+X8+aQGPEjSzChMYeIPDtZrZGlnT7HHXQ1JcOh6BaU
         UeqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769588858; x=1770193658;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cfH8xnb6PUnLEV9e8I1zVQbJiQywxWkoNny71+9vJtA=;
        b=tw+Am4uU8cVOivO5SzgbBnYB01jvwg99V6BNtoIQvkeUWDeWYQVybyfM1HzVCVSQ5V
         6CaNGdP/ui6meggKxUZc+7wK2RI+LQ1FqRQufNLikPa0OjcNpsFZXBqudazLw2MOtN6V
         FGUJg1U6CVc7p/uQA8P8sXd9fYLyui6jc+xtZAC7iCsEDA7BcErYCblJHYy9duuJdttq
         VAT7jJUhGzZBcdxVZ7aSFDzCpSFlAP2pSKWI0DYIK7rAUJAElRDkJ5/u0kuZCMbW8oxK
         yOA2dIAMxMSmkWRlharjUR/jgO4bwboKP3+b4k67lRx2HDVQtwmTjf3g3KNr/mPX7+jH
         qO1A==
X-Forwarded-Encrypted: i=1; AJvYcCXKT29NlHF8yhPCHMKnYBfBa4q4+UOLHgOdnlGE2VMgQ+c9V9E6uJ1/a0apQnmUUZAS68rExtjeNyGz@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3Cb7u9WTfjPzsP2ophbTSX2MSNTmsp0y3A957wCCZkll2LjWR
	71fPkbssHxe/TvA/lC7k+S1IdpgcJCj3+UKKO8xTXnLjNw7dj1Sux5mYsfXqhd97+2LOHH0/iMa
	ettniDOyuj6+QlfSE/kAfYeXpoQclgZ5NgarY9RKwg2EMNSiA6ZveyWg6VMk/3EvM
X-Gm-Gg: AZuq6aKTKxIkvQPaphltaUQfCltYMuGvDNlwRrLDq1AENpBynJr7WI6DfasrF1FUcYD
	3kx0vC8rwX7xlQCJVrR4mWsoy4VCbL58cZthiQ4CqziguqwAERDrBcLdT9laJW1VJpIUErAheHe
	Yy3r6xYm0iSVIgueBf8mEPZVjSlckhKXwjABHg799eNlEyj9a7/Sob48iNbMkNyPK51zaQ7vEj9
	mRqDR1CFr56CExGwtGzdbhrfIxccP8us496+6HwdhUa2aby488fIr1seMCQLPBiUfCs4O0zh64m
	jV8DCf08iQYfgIhN+qYODE1gUL5MY29QYzBsTAgyP5j3rqR/9Q/xwAFRV8ywqpSGgyTPIBMeT1r
	kYjejbS6+bZ6G35bWBoMLbGck
X-Received: by 2002:a05:620a:3d07:b0:8c7:e64:3dbf with SMTP id af79cd13be357-8c70e643f9fmr363997685a.87.1769588858451;
        Wed, 28 Jan 2026 00:27:38 -0800 (PST)
X-Received: by 2002:a05:620a:3d07:b0:8c7:e64:3dbf with SMTP id af79cd13be357-8c70e643f9fmr363995585a.87.1769588857995;
        Wed, 28 Jan 2026 00:27:37 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e131cefdsm4939547f8f.23.2026.01.28.00.27.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 00:27:37 -0800 (PST)
Date: Wed, 28 Jan 2026 10:27:35 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com,
        Jie Gan <jie.gan@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v4 01/10] arm64: dts: qcom: kaanapali: add coresight nodes
Message-ID: <bj4edohkjs73hn6lpzl27jnyijfe5bfkd7gfpkodan3u65d4b3@fd2mvvbwkdkd>
References: <20260127-knp-dts-misc-v4-0-02723207a450@oss.qualcomm.com>
 <20260127-knp-dts-misc-v4-1-02723207a450@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260127-knp-dts-misc-v4-1-02723207a450@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=YNWSCBGx c=1 sm=1 tr=0 ts=6979c87b cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KwhAQRRhPyZe_uKFgesA:9
 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: 3MyAtSaHMk_ExIWlslTqPPg-PhwHuVZE
X-Proofpoint-GUID: 3MyAtSaHMk_ExIWlslTqPPg-PhwHuVZE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDA2NyBTYWx0ZWRfX5W5H8fu02L22
 YBPwvmkwC40Adx+Ow0F+MQfHi9CZo5zZaB4wPvOToY4Vp4ECZKD13tFtJObE9eGS2HWMRru5j05
 QTS/uftf6VpgL9UieXVWei+pNzQDm7IFimwkZGRbxiHfJxB668xSdqpCsY9k1W6OZYkhRkzRT5P
 xZ5yy4Jg5+ZITVTOGTCoG6gdErYH75dTEWwmylbrFKyeT1eQmRHhe3gOW+XcMfWiUMIoCro+NOr
 SgXlg4zpmsWxUd7sF9+wVWOoCEbVcXK+Qm5a+Rv8Z+M2OEWuotuikZAZYUSVW5HHwYNzpzjYZyT
 8GCpV+QUBudwRvZjWEX8WMSOywmdHgyXZhU0HsUoCer3DA0qp6Vk+JsF0+D5H9H9vgpEMbIv9Sc
 ic11yU9fg0KGhJFZ019OvYtZFi6cGpVXY5SasMoE9ec925RLYv7W87ACBB2KvXKPTT9unLKdchy
 7WhOmld08BN+tVeLw+A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_01,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280067
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
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-260233-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3C1659E308
X-Rspamd-Action: no action

On 26-01-27 00:33:58, Jingyi Wang wrote:
> From: Jie Gan <jie.gan@oss.qualcomm.com>
> 
> Add CoreSight nodes to enable trace paths such as TPDM->ETF and STM->ETF.
> These devices are part of the AOSS, CDSP, QDSS, modem and some small
> subsystems, such as DCC, GCC, ipcc and so on.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>


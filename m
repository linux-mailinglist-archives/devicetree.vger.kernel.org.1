Return-Path: <devicetree+bounces-267693-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mBR7Ms8TnWkGMwQAu9opvQ
	(envelope-from <devicetree+bounces-267693-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 03:58:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CACB18133A
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 03:58:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 47F98307838D
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 02:58:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 621FB27280A;
	Tue, 24 Feb 2026 02:58:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dz0xP+7k";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Qb7LbHE9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4935E2367BA
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 02:57:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771901880; cv=none; b=ZM/6+7QA9KsMtZ5gab2L677gfchSMBDjV6X+ewLICprmy0H1Oa+nfObAlN09+BG13DbwCnO5zKz0RbO3hJDNA70VWZ5uMB3dYMI+8EhOQcDRU80l1FaxtnK8urpGj9hkfyY6C3DEAe6jVpq/fuw4pHL+40o16LDz5KlDOlgJX5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771901880; c=relaxed/simple;
	bh=G81DdD4vTlry2GnkMp4ET2OwnQPgCeeTugV7EsoCThY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=He42MZLxqnY6ayQOpV3Eq79BK5F/KscOjrirC+xu2RpXNyQ1/DW32QGSOFDso95Ka2HwtxzUqx+r6tRmfFX2dkXZGqgdtQ/5qGc+/YQyAOkzb/L7Ge0ohWj5UCrZRJoNQKHW0XWwOtfFv3oRpaE3HLBwcsiFQNaibV/l4cbn5/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dz0xP+7k; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Qb7LbHE9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61O2m29L2119887
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 02:57:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=bhNXyfaUg+jrqvg/fHqTzOO6
	8WHG6WArir/jushJII0=; b=dz0xP+7kiywlBNd2L94/ZMBzLtntnLyhVEmWfDY9
	IIG0gyeoKAIuWraaX7ax8pfHYtk84UoSFjkqjdDNIOlwhEbXXkVpuWBlDAvcGzra
	hfr9lzBmy6InPaDsm3uDddnVwJiwVj3Yao3b92PBRV+Xo75j+1G3Rmlc4F57eRPi
	qqMDmdRTl5EctVIXcJjIgBnvQK7bp2cFu+826qMj9gzwsU8hBahq+7hEqAcFz7E1
	6e9mCTsuKPNrt5iEOGWX0O6jCZSwNLishBjLHAO4iAbSkjLF6xPrz+2kz5v3KvvT
	xyfHpcychoyYsT2zFqwFZwgEbMvQrWXxGNhUfan3COOG8w==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgtyj9fgt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 02:57:58 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-506bac14430so291243751cf.2
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:57:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771901877; x=1772506677; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bhNXyfaUg+jrqvg/fHqTzOO68WHG6WArir/jushJII0=;
        b=Qb7LbHE9TMLE+Nzyx3/byMym/UKLIwogyLbVBrr6nrOyD/BkH7Y2FuRHoQzpjm/LIH
         xBAWUgBr/moSEi4fxbz3yTeHlXCBDcZCJJrTVArnrnvThm3kFvjBjhZLdbvEsrD8Ze3x
         DED3A7/JjpDTxQqCrGMP90Oz8IOo39UH4cO82kXazNBe3fJR6x7HjVMv8mCq3H0fY4n8
         NRtYLIOcNfoGZ6EElayTcAPWncgVJuzQ6GQxU7FiQcE0iHAoD5NuBiwJ9MemB4i2xdnb
         xjoFGJCAzPf5q7sGz364e0Om+IcCmQQPor5iMUb7ISKhVUerqQjZm5Doe29I8/MDhkge
         /B8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771901877; x=1772506677;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bhNXyfaUg+jrqvg/fHqTzOO68WHG6WArir/jushJII0=;
        b=EYHrkF4on0XenrC3ScQNn05/Of1XzFojnSEZzYgJADcMxcipv4A6nUZPiP91XpdDFM
         av0bbQk7N412yYwHTYr3KluZ0co/zsxuXOiI0vY3MKD/4RXifhJ6SL0pKwG/6/fvUJa9
         uKQR3qibGhaL0yGYAa4wR3P6aYfhsuGboQm/QtYedntHjWu3DNQT1KKlC7dmEOdKpKj6
         50DsLQVPN7bXsm1gNGL1EvRKGt50owlaPuvnCv1OOdnAITL420+P3PtSxT006zSB/3zQ
         YYxWnQ1VYJfTIzYzoZ8HwR5YnL8LGuY+ESwtPs1oLAlcRGhl18wUEqVCXtaGiGCE/p9Y
         p2cA==
X-Forwarded-Encrypted: i=1; AJvYcCWwc6fCCrgrcaHh71NxdwplH2+bW+2ww6f9Icp2yL9cvdW/OKu/h9Y0HT3uOPg6ScFHGR8nUMO5pmRT@vger.kernel.org
X-Gm-Message-State: AOJu0YwZNObO3Gs2kP7v9fardIt1l0Qkv9Zn6NV4t30AQc3NhjA0yzHI
	5JlO/qpXjOlfVJ7d8OyBK84Qhpx5Z85QUKRLeL7q+gPCACoVRJWw0rgorBUKDHN2YKl90AGLZgs
	7XVY1I4VG3sVS8LI5ua/cZMKyG0c34IkSvLJabBa62hyI+5kbhI8Bw7+xQx42qSQS
X-Gm-Gg: AZuq6aLhcm5cGgMdSQSRvkoMBvtjl29QLGyJWAk/DZpGz0I55Gi5VvJ6IjcmwHFXc2v
	kH5JQqFbDiZPPcTmU/+ZSZiTOcLwQOCf7nFmVA4nprgGEQSLYhVgFJsLGkbIDsiV48ipYBdLa7g
	PIUQDMyQWrKrrmiaUo8lhhXPyyUU3CttxQBB2tnINCp2nOZaVZVOkJBFFgW4mfoWQtYgy9ki+qM
	x9+vUKz1O4f1r4Zp8xggsGwdpWFPpVRuiTgoPDUkJL1XIFjQeTu6gG4ivnHopPUFll3ns4VSXpJ
	k3wTiZhm518vje7n85t0e44uiv1HT0VE6DCd9LQUNmY2RTa77hEcmrLzK41sgsb3NzaY9glQBLe
	DXJlpCW2vpNQx/zD5RRSoeQ8h0w9nQyqrnsrxYwmFwTZZepjxZF9x4NuGUOYIxPhUlxUGNC8iv2
	eXzHbwUZlpU8UpY8hj7KC4x6KmySHXJUfNtWo=
X-Received: by 2002:a05:620a:390a:b0:8cb:7b27:9336 with SMTP id af79cd13be357-8cb8c9cf508mr1363355085a.5.1771901877641;
        Mon, 23 Feb 2026 18:57:57 -0800 (PST)
X-Received: by 2002:a05:620a:390a:b0:8cb:7b27:9336 with SMTP id af79cd13be357-8cb8c9cf508mr1363353185a.5.1771901877251;
        Mon, 23 Feb 2026 18:57:57 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb0b8dasm1865622e87.19.2026.02.23.18.57.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 18:57:55 -0800 (PST)
Date: Tue, 24 Feb 2026 04:57:52 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Cc: lee@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, sboyd@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alexey.klimov@linaro.org,
        r.mereu@arduino.cc, srini@kenrel.org
Subject: Re: [PATCH v2 5/5] arm64: defconfig: Enable configs for audio
 drivers on Arduino UnoQ
Message-ID: <tsy6witnzdkldtkugqrbbv2ewyk4zy4ydvcbxcvmyh7mr7p3ex@k4tg7db3cvn7>
References: <20260223133950.221234-1-srinivas.kandagatla@oss.qualcomm.com>
 <20260223133950.221234-6-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260223133950.221234-6-srinivas.kandagatla@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Jq/8bc4C c=1 sm=1 tr=0 ts=699d13b6 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=6UlaXngAVdkYaplpOtQA:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: z53juWUVrnerlDXZDlPFKSJ5FqNVz5GC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDAyNCBTYWx0ZWRfX9yUKBJG4LvR6
 1FjaofyXieOoU2LiMixfEfGU+jBjuXMnZJdWWZqI3BM/80UG4eWIgNOLxe4lJDyzx2AFW0pwVhj
 J8xqtSwK/fXBmTkZsAuNtZ5nDta8OOibet3qxhrwdJoskEv+UHQQh50kCVX4tTxAqs9XxPDX/3H
 SmTa3DYpmAfu6zxrZn1nODK3+bWM4CqbHyQ6tZpXMMl8j6cU5L1zUusZdHHfX6g5tq5cxcybeX0
 P1o9nUq8S2MWZS29S4v4R3YvFmobwZvLhKAsSsMyO66OZF+S4iHZyYrEDXfogFuQSe0Y0DYkHmj
 pQLfHoklVH4ZRYuhqV8/drUa92DRcLRz4T/5462spSPA5+hADX3X2V32AILGUBbe2gD6/JAXeDD
 fudNQjlWNrSIMrHYT+8+skbUXfOo328z68+vPHO9m4PgdFNa9NbfUnvMn8yY4aNtlpljVYe4Wzz
 YY+dT8S4cfbwzvQuClw==
X-Proofpoint-GUID: z53juWUVrnerlDXZDlPFKSJ5FqNVz5GC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_06,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 priorityscore=1501
 spamscore=0 adultscore=0 phishscore=0 suspectscore=0 impostorscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602240024
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267693-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2CACB18133A
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 01:39:50PM +0000, Srinivas Kandagatla wrote:
> Enable reset controller and pm4125 audio codec driver that are required
> to enable audio support on Arduino UnoQ board.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> ---
>  arch/arm64/configs/defconfig | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


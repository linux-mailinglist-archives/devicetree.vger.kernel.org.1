Return-Path: <devicetree+bounces-260672-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KDjZOR2semmv9AEAu9opvQ
	(envelope-from <devicetree+bounces-260672-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 01:38:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 67CE4AA474
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 01:38:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C8F4E301185E
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 00:38:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6396A244660;
	Thu, 29 Jan 2026 00:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DQ3kXp3N";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hrDc02Cw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C18751F37D4
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:38:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769647083; cv=none; b=OgJFY/bbq574/t2Yo4w6bRQGDronW6mhyECR8vRaWPlLm8X+EcBeny5sWWG8QW5m6cNQNlx2rwZctOiB1ch+HHMZXbJRQe/xYvyJcqtPqtX4jToIKKXW1ZEnnyUNlo4Ty+xZWkmecD8+qRApPc0ns/BnhxpuHaMQd+1aOv1T7bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769647083; c=relaxed/simple;
	bh=3h2odQ/t1doW2JNGfy9kr0gBTfOLjPqb4aMua9YTTIA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jk4F3khMSCbR07uwoVD9iNQnaqemXRxkswDbsrLswE/tmQ2yyYi/ftg8smItsPLUYJcLiZ2KkQjv8ymy+ikckro24MsBuiii8mUwKTTWpgWCLtZiJwNSb52WuXs/IzSBpDT7Wl5xkTU0dZAsM3itYhBqpzPi69YxGFUWcla2IoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DQ3kXp3N; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hrDc02Cw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60SH44Fe1407437
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:38:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=8VScJznvPkf3cRKoX+GiVPA2
	1+Y2FNUyfD0B6qzVeCU=; b=DQ3kXp3NuoN2ube+UHYjupk5F2JhJ7uN4mub1WF0
	dC3g1JtUQ5kFB6PX52Jw0GMVS819ZTlDap68nKNOgwthvug7Hm0z8qZjgot/Won5
	WuaSqOuV6JbHfOH/bxaSPIkbdpXC8ziU7JH4+5UYhrNi0sFwClcKrqYBHsT/2o9k
	mqLw/kb4vlkakPfEXLBniB6+vFiAZ8uwN15befh+R5Ug8SltVfgFcDfdjki7RyDG
	2VUIxB14otpC7i9YBEN1oqQppdEsKWWR9QLmWJqgWk5YLdheVj7AbMZVBlW9AcwQ
	KXpxzjwfh25kgbXxD5ylu6E2InEVdhUXWvebA0RvWdDm0g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4byphgh6vk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 00:38:00 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c70ed6c849so105107685a.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 16:38:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769647080; x=1770251880; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8VScJznvPkf3cRKoX+GiVPA21+Y2FNUyfD0B6qzVeCU=;
        b=hrDc02CwSocTHyY2Q7rme+2aXxIGloearl6mc7wzdLLPnZFUd8K/fno+7DkZu98dW2
         F9O7oGCn13Qdz3aEmnmBeco5zCSP8En8+Zg7gL7p11lNzACCZPyL0+5lrfHqM8Xh1eg8
         QX7uGqKKT7ESJ7UEJqDyjavDzg2Co0tNJJRh+FhiFgGfN36wC6oz1k9v8ylLoABYj5UH
         u+DwCcU4wYBKyEstRVLzu2pKrN+qGihZxkbT4fTMD9KKlp+GCrKpkB5Dk2PtHh16LtTb
         ogeBfjhKEadr8ZjKqfnzuBAyPLFOwHPkw8cX6jFaMDspJ8V4hkCFFdixPYcTtPhqr7k3
         c6KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769647080; x=1770251880;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8VScJznvPkf3cRKoX+GiVPA21+Y2FNUyfD0B6qzVeCU=;
        b=ep4BghoF9mG3HKH3dgTsDljQ4EtCvW80jvw2LmR4Odej1kIIK0XlK7kIGDukOOGqgj
         zwXJdDmncQbJKDN1SwUaJNhvHUnnM2KBLtAQs1OSQvNcoUR+RDKN0XnzcaxQVGHoABeM
         dTT9mrx3/rDIZve/oIbemVVYlMdl627X/YzrAksVzxD3j7UURUsDQQd0afMMGvzP999h
         vWlDCakpK636DAInutTL5Hj2HUbdXBqrp/94hdRU/PAmwmWt8hyERGOYZppzIfsaE82c
         w1eZWKl5pFXP9Hn99E6EsUW7b8SB2FozqR224G6Xl+hp1muxrW+683YC/ctaozawobLO
         sSCw==
X-Forwarded-Encrypted: i=1; AJvYcCUMhI3fg/ZpFcsrnTQMlOjb65WCtNVuPRQNAO0MNphl/A8caUlHwwJSfW+vTIC1L+eN6PB2aDKoBC11@vger.kernel.org
X-Gm-Message-State: AOJu0YxeP424Z8pCzXF26dafT9QxeKeNp1UVuRkgAFH2DPrY+VxtrrDE
	rIEDXf25hQ9MGdhQKkF9k4Z9dPFSrQLYzuV2YfkKzWcdH2PyjC55er8NJ5qmLPdxnQeNIsfkKUh
	+3qLTbDga9BK1PaG4cNapblVN4HV6wihXU5QfNrabk0F3+LcTlmZVlTci6GZEB5im
X-Gm-Gg: AZuq6aKlQMKRR9riWLdHfZgxn7BGux4EN9Gad2U7s1zAOxkDdmDuowcXlYVrDWtq4Vz
	t1WSRSxEk+6QkFlOX20ZU++dtriggVU97vd9T7cpyPnZmTaDqdokrGwkEMtEk5TavCWXSLpvrra
	bam9/rGeKDLLyLp+8wDulFfXj5eFFwV2mePb9qzuXAy1ffKQt1EvwTWCs/QiVCgPAB8G5sqBlPm
	pf9LF7Sza5zu6hIitmnxtnOCOx5BbG+QN+OzXCqaARM5UXhs6DxRCvYul8rB2RMzFcjOFzOliF/
	Mb6sofAvJnuxJWsnxh5Bwk4n65+uATW/pkKxLTi/hQB0YdYwTedBruviCoQSv5ITtnaDrC6Zrkr
	oZ9yjo5CCjn/vE8Enen1DRgywd9CxaBQeNh3vwMKpptbB17ATXkrireqIl1tw0XiEvGuYgpN5T2
	0ugO5FmJIMFxmNk0wd6zbu0aU=
X-Received: by 2002:a05:620a:4507:b0:8c0:ceb0:890a with SMTP id af79cd13be357-8c70b84033cmr844933585a.16.1769647080009;
        Wed, 28 Jan 2026 16:38:00 -0800 (PST)
X-Received: by 2002:a05:620a:4507:b0:8c0:ceb0:890a with SMTP id af79cd13be357-8c70b84033cmr844930885a.16.1769647079587;
        Wed, 28 Jan 2026 16:37:59 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38625f6c2f3sm5830711fa.26.2026.01.28.16.37.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 16:37:58 -0800 (PST)
Date: Thu, 29 Jan 2026 02:37:57 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/8] clk: qcom: videocc-x1p42100: Add support for video
 clock controller
Message-ID: <aki2cw65fdl2toctcquprkzpltz4tejsyf2sudlfqy5hsluvx3@ayi7wqaa2csq>
References: <20260128-purwa-videocc-camcc-v1-0-b23de57df5ba@oss.qualcomm.com>
 <20260128-purwa-videocc-camcc-v1-3-b23de57df5ba@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260128-purwa-videocc-camcc-v1-3-b23de57df5ba@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 8Tj0pzMRO6hSB8-tAX7z0cXBeJIt8j-E
X-Proofpoint-GUID: 8Tj0pzMRO6hSB8-tAX7z0cXBeJIt8j-E
X-Authority-Analysis: v=2.4 cv=J/inLQnS c=1 sm=1 tr=0 ts=697aabe8 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=rAeN3jnYVyXTJrfZgKIA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDAwMiBTYWx0ZWRfXytiH8sbuLHR2
 9KC282hfLBymCvCXc6iLJqYoqZ4MYuzOmQXQuQjDIABKP7JIX1Rs5YXmGcKFv0dGU8Q8oqdBPU8
 pqOw8xLXuygY/OSnJtOASGJucYw/McaOhF7a1yHFlxo0NlWnJhBK9iRIkPgwJVJqVishd6NnsD8
 Z7VVTKjO580mJRtcuCOC+hDobf5t1UZeeAvCg4IQ5TgUWlMGbPG3NZHgnXtgEhfKD+Ao9mvxLXh
 ctqG1WFjXJyrG50Xy9lVsxFD+9bTFPZba3m4PHyzD69NkHIUCmXnHU+WynXMXL+RfyI2Kra1gBZ
 ABd67a2DRwJzzm9Y9nPYcPUzVRUhyztsByRpqkRCXjG2qgCScKxKk2uRHczO/WwAoabZsoJPcFL
 IPE5EBnymO8jPdQMkcE07RJbfDOwUN2FvqREVp9XWErkl/YiJQyXcEB0HTFNT4TsEi1bESaPSrJ
 XOxzobCH319uCQ7afZg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_06,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 malwarescore=0 impostorscore=0 spamscore=0
 clxscore=1015 bulkscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601290002
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260672-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 67CE4AA474
X-Rspamd-Action: no action

On Wed, Jan 28, 2026 at 12:56:34AM +0530, Jagadeesh Kona wrote:
> Add support for the video clock controller for video clients to be
> able to request for videocc clocks on X1P42100 platform.
> 
> Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/Kconfig            |  10 +
>  drivers/clk/qcom/Makefile           |   1 +
>  drivers/clk/qcom/videocc-x1p42100.c | 585 ++++++++++++++++++++++++++++++++++++
>  3 files changed, 596 insertions(+)

The videocc driver looks almost like videocc-sm8550.c. Would it be
easier to merge them into a single file?


-- 
With best wishes
Dmitry


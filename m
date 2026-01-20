Return-Path: <devicetree+bounces-257628-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QNSDNTELcGlyUwAAu9opvQ
	(envelope-from <devicetree+bounces-257628-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 00:09:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 579D14D880
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 00:09:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2E265AE67EB
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 22:02:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4DA333890E;
	Tue, 20 Jan 2026 22:02:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cgJOi1Mc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ab7EQ3Lt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0DE639E171
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 22:02:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768946528; cv=none; b=Itevcv1F08b29WF2A1+XiHmZRWzD79xE+nGZetYd/Cn7pzPCSkuPETWlGuAYOKaeIwEAFhhcbX1SWXDvmF6KB1Ncuh6hgPsjuqSWsfoUltAJBa5LFU4KHR7hi48CWl5i0+CW0aBJV6ESqGtGKOhKj9QbOglbjQQr1hiqfUl62H0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768946528; c=relaxed/simple;
	bh=VafLE2LsMSEMxe/8SoZIb+i5nLHEo+tX5wmA6Yii4yo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OxRhqY73CXzcrEj5hG+bzOPHq/Z/G8hKLPazRllEx6DlHGtTihi4o04rd88sPt+z21zcRHbn8zSDmq5/YvaCDdwcFs9VZzNbSD1Jt11LMSxxBq/0KpTFwqEwHYjFfv2OOV+H/oeAV2HgLIKye3vn2tg4zPt+QVfq/tyXmH68rss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cgJOi1Mc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ab7EQ3Lt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60KHrY8h2828356
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 22:02:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9crKbumNaTveQ41rktS41EDf
	zqAitvWbjmLVxdNQRjQ=; b=cgJOi1McE15BRnX/3Iqw+pmpEoef8WZ3PboUuFAv
	7Z4gjsFQp+6e4KqkmJYDppx7dvKrPqinEvA7vUSsok0BzzZKdpBfXLwbnkHSivDD
	Uv7FVyfHbXjeB7aC7jQSMDar+0zseL8fhxVWivARDvbpvyCVl4fEdlQKm1cRMo6r
	aMCm67kmIuikB0yb+ujnSeSHH0rEhwKPV7iP/HDAbz4Bgec1HoWrOVnC3Cim46vW
	Xw72jk6J598cW5txqC+hD/wHVVohB+aSAPp8VopuM1WEATi1qg7SRzxuR1Ub7meQ
	Bytl5AaxaFQC+WedhNBYObOqRjyON8jE1l3H+Nu9k2fekw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btegk8t81-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 22:02:05 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c52f89b415so222940185a.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 14:02:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768946525; x=1769551325; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9crKbumNaTveQ41rktS41EDfzqAitvWbjmLVxdNQRjQ=;
        b=Ab7EQ3Lt4Iu/xOOlZ3dAFgTyfGnxeZNl3+Gxq/eWqcD7qbODx9uBplK8gX3R+aEXmu
         ASlt1s+G1mftXO+qvNV/uSgdqmZp3hw9h5crrUSoYn8LwXrxcH3P/hVo1+TI5sQ3/Ojr
         VXzaqAb5flDySmFGdHhIPIbpFr0TmOZrMiMxFN5o9YXvpo7ivX0INqtr6lkL12Ci4aJb
         XrL0nI3Hk9n9vzojzjRoREd/3sr3VEPrukFlwY3p8Pq7yhv3RKKN8sHq/gfDUcofOtYJ
         XLnqUxLnPFbkZ0nDGmohuN1cSx+RWj07yrvctA4DenjrdeWHQdFschww7tkQpep1uPSq
         wWog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768946525; x=1769551325;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9crKbumNaTveQ41rktS41EDfzqAitvWbjmLVxdNQRjQ=;
        b=JEcFxlBv7osvKAv3jPcWy9SOkG40JshBtrZKENvVKVdsfsYjarW/AReZ+XotngeXdc
         V4ZybfKAVfi0xm1PZ1oShNE998OQTz1v0RC9VOd1aQLiktA5LSeke1hinBujVmsyZQcy
         wpqudlxx/SF7M7Zxb4QDh69ZsJ8H8M1pP2qV2QZqFq+pIGFMGMoFCXjNnM8XsHxRYOby
         +GIw/9SJ0QVOogmdCWF//Ov2arjZ8iWP9ggiMl+lcPsB9VrYl+ZC3fLAFqt7xRVmMTQ3
         ucag88HakIKM4Mt7syByUlSypndXiE17scAhk13RFF1uT2/8EzeGdq0ZENlWEV9luZRY
         N/cQ==
X-Forwarded-Encrypted: i=1; AJvYcCUBK2Zo0Wmbw9fa92PKuu+98NYG0kuhlgPV5vzF5uckvfMoWMqinCFBlPurzqOvjW4r3LrFhROXU/sd@vger.kernel.org
X-Gm-Message-State: AOJu0YysmofhLhEWOZhm3OdAhvCXUVfkCfYSLqkqnbaupmShMDP7UnBJ
	rBL0QoAMyQMN4XPZZ4KZcjJJhb2eW97+ie9kU7K74W5jAU/iGLAXxhQNvesrV/ZtR3WLmVw54Y+
	czlzdF1Lnx+G6A2ad9XqmJDwyVUltIOKUqugJ/QvgrOkMTKFOLyLstq5PMRgLzyfy
X-Gm-Gg: AY/fxX6Bz1XJiS/AyVypPBPZu8QWgW2O9TzE4BmNSJ/YazqKgYnfnAq3ib36dwMBkfe
	kXoaQZ8jq2alVnQ1Hs6pdHslA70hGjlR9OrMiLgzQ//QH727gSOZLdVhZLKDamU3smrwP1LBEJ8
	j2mQIrCQmSt5QeJjbxf6ICU6RH9m1ZID4cvxelKDDQIHUkSD4wDOUGEa3c+jMkVa+8Ix82PY5EO
	R/9uiPQzmJXgrE8xlsG7U8C/xULh+08w+W9XcUvnxWeAVSAnRcmqDViL2p7eBG2/IWx3oW434QC
	8JkLzMJDq9DqGRsuuiJ9OvHtpZjtqqL2EvWeszx1aJ+laEJ2fBR9tS0KFMGujhYLi1vE8GzFrJ7
	nPZexk8FdGhD2QQr/ymXzVNj6S7gNiUIn+CQQROuLk+aQc6GGAHnQBh7pfbkjXLNeh79OLsWteA
	8VNs/C8kzn9euF7OCW32uX2g4=
X-Received: by 2002:a05:620a:4723:b0:8be:64e5:52ab with SMTP id af79cd13be357-8c6cce3bafcmr409213985a.60.1768946524851;
        Tue, 20 Jan 2026 14:02:04 -0800 (PST)
X-Received: by 2002:a05:620a:4723:b0:8be:64e5:52ab with SMTP id af79cd13be357-8c6cce3bafcmr409207385a.60.1768946524180;
        Tue, 20 Jan 2026 14:02:04 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38384bc471dsm40146081fa.0.2026.01.20.14.02.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 14:02:03 -0800 (PST)
Date: Wed, 21 Jan 2026 00:02:01 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        cros-qcom-dts-watchers@chromium.org,
        Kalyan Thota <quic_kalyant@quicinc.com>,
        Douglas Anderson <dianders@chromium.org>,
        Harigovindan P <harigovi@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 2/3] clk: qcom: dispcc-sc7180: Add missing MDSS resets
Message-ID: <b7yt62rylzcu43bu4k7haj56xltyg7ejj6nfloinmiyjfg5h5e@hhh6ewrslff6>
References: <20260120-topic-7180_dispcc_bcr-v1-0-0b1b442156c3@oss.qualcomm.com>
 <20260120-topic-7180_dispcc_bcr-v1-2-0b1b442156c3@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260120-topic-7180_dispcc_bcr-v1-2-0b1b442156c3@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: AxOl5A8NkwzfiSim7f5hKkKUpnZcwAfP
X-Authority-Analysis: v=2.4 cv=X9lf6WTe c=1 sm=1 tr=0 ts=696ffb5d cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=nZ5XTfsJM_D5RP7zCugA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: AxOl5A8NkwzfiSim7f5hKkKUpnZcwAfP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDE4MyBTYWx0ZWRfXyTpV8dWX17rC
 vanFQ6piY7Lp3pXMqY5dRf6x02w/q6nDCe2npBPpC5GYjCnp/VQfMC96OdEF+OjGMfmTZJ555ga
 /qBmNhgCSJwdAuOv3iW/LRMTPIjWcO6FU71Y2yrVLD45ralsRHNBAsuwNUx111FPDHbfVT+1qRv
 eWlRkHvM1o0HGiWApHeoDYfRB48VKd56IjX7Szw11H4MqJJY9lecHwJ3c/8gO5rJCDvcSdTeBx6
 RJfPSgS5k7GGk3P/jNZA54lCw4i5vm/vvcvGIR3fSTFe8EOYxDaMOa4KYHcHHk5vR/7L3dn+9bg
 V+gg6MwXNVfNUF4RWodULPLHmyqYzpAsXIiUUTr9/Pi4MaVK3UopdUoJ8HpfN+OPMX/w88w1e5j
 alF7K3zLAe66DwKRwAIO5OWhtVsZAUygeLuiFptJZjJ8uGCB7v3wVZFSL3oIgmTx691WO4WvvVO
 F8z0mNXe5ekAYKvBs+Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-20_06,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 clxscore=1015 adultscore=0 impostorscore=0
 malwarescore=0 priorityscore=1501 bulkscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601200183
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257628-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 579D14D880
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 20, 2026 at 12:19:26PM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> The MDSS resets have so far been left undescribed. Fix that.
> 
> Fixes: dd3d06622138 ("clk: qcom: Add display clock controller driver for SC7180")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/dispcc-sc7180.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


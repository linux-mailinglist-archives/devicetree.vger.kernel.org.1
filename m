Return-Path: <devicetree+bounces-255785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD8AD28A59
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 22:09:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 55B05309B901
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 21:06:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07D85320A1A;
	Thu, 15 Jan 2026 21:06:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lFICF+ga";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gCtI+hJ9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C998B324707
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 21:06:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768511185; cv=none; b=u6dCL0c1Duwdo6AHDQ6N351bsVDScyQQgw/t5+gsIrPHwghx2DBmpOnJ1d1VZWjw2m6abv0n5pS2byXXH8UHQG8YtP3LWiWUStq+W4/jTNZYg8u9sp2cGmWnGjSpQ7+OuREr7YEe1HiuApXKET7uksgg8bVoSF5BJgX9vGlLpOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768511185; c=relaxed/simple;
	bh=rvNho21ovDEnl1XrGzEX9DQTCL04lvRzb52sRSJPCqE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=SPRBMCSVBlWjmKPGJmXS2iW3LxMOiVyq8gu7mmNwp1IKX8PUlNj7ZhFv65ccWVi41uQbTUw5ZZ+UWGIbUEguZSTqLHFfkCi0MhiJuiH69NCbC4jxDvPMGoVjC9YCMe3MmpCK4GsxPenalg+xOJS46r2vr5R/oopm0EXzh9XzXP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lFICF+ga; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gCtI+hJ9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60FFYW351910413
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 21:06:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3/lSi5tJmSDkk77YoSdZcYfEb4skDRObrBrQxoLY+q0=; b=lFICF+gaABVgQTny
	N/CiKxWb1HRqPSpBiUY9iRo2lmE6IzZibGEYqfLQNY+mAFZseKhMfediFFwC6x/U
	4ZS5tjZe1iIm0fIkb4VkSczBGG0hNvtOvEKBEgzRsQu1dQVKH7MHhRxMIFBH7Omj
	xBDqgDDnfiChreRxc8NZjeC1HeZA9KtpRaBnZZOVfiZe+xDUCo2kTd+z2WYKnAfG
	fUF6ntjUWGnCHOyuyqO0RANhClTnoNr75JIxSLphHj1a26mm40v1mD+SDkteSMxQ
	7nvyFlwPbe64LQPX5qjG79mtprbsYzIx5QNDM3EpBn9qm5c2cNZ6T9vqOImUKSoP
	Cybj1A==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bpxgn1s0r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 21:06:02 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8bb9f029f31so435106885a.2
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 13:06:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768511162; x=1769115962; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3/lSi5tJmSDkk77YoSdZcYfEb4skDRObrBrQxoLY+q0=;
        b=gCtI+hJ93tVnGed3GHFASzuDPf6efBjqb1xQ+TFLNFDOeNMlb550VmogXnAidMNcfI
         6rYZwqeTqljHcsPPauXKPlwNjQb9EaJtEIvmLiBkEyMLfHAxLup48CtE7jQ5dCVYCyWP
         vkDqJVAhlG3SMX6Zg3ozRwG46ZUsWgOkxAfC5jrqsnj2tspTnTBQE3bsSAWOwj9lUtUi
         AdoTqEIV1AgTLpSBIbz1QsfUvQAb0sf19ICLB4fSiHo+5qI2F+dSmR96vvBjV2dzcS46
         S6Yk9wbR37cG7sqwiVUNP/R9WAbzF+BdgfN4TompEy1IBZqe6W8wlfQ3kjksNKHU2AcV
         8rbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768511162; x=1769115962;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3/lSi5tJmSDkk77YoSdZcYfEb4skDRObrBrQxoLY+q0=;
        b=mGRrgeLrZdx3qkIsOHYe1qXn1sT6lPeasx4n1c2uNr9mYdEjoFxjqKUH12j9kziOkx
         MW9mumIs1xexOuNMngTz7LBg/f+jxf1oYEjp9iYCuN6ufXj3R+WHL/bk0bpX7zEk5/fi
         SMfw2OmrSxJNuHZuEiWxBybjvkm6vEICQQG9Y6i7S8p+bEMZtUH3QCx0PD91l0fg7eWC
         SCl9O0slmlOaIcNOda7JpixNtcpglG+wshxvEjAScn9+vydBpXyjvNiITNPaHYZrLL1H
         hjJ72LRTx7C3vBgScoLIZCVeo4FzuiPhJGgoTD7ioNpScrQ0k/WtaVbVJ1ksY+x+k4E6
         do0g==
X-Forwarded-Encrypted: i=1; AJvYcCWOvqCuG15EYEBRftTKIHXOn0feOe78izfANlw32oG9zRWfgPdooZ4vFYAieZdtOblyI/gmeSFQaU9q@vger.kernel.org
X-Gm-Message-State: AOJu0Yxr04sAroot4dTxQI47HZVmILg+m99MValKD89I+dklVaBWbIU/
	j734Lqt6WEk47W11t5iMQOW/6H4mVFp8RPBhHyHjmufpei/kQBJuW0qhCqpSxYfm6iJKUPZEAvx
	a8WLKheN1l449JWA96A0ho7l+0SwVLXPFYgEr7fnta8AE3r/P/RuYL+PAYDlmW6p6
X-Gm-Gg: AY/fxX6LluzXGxKOQ97r3jVnvH7kU7KaahEjAi5K31YPi979N+d2riT86bZoj7QMOF0
	SqusHqWo6O1YgZ8XJs9ZDrnMpv3ywdUofzFNN/7ySmBHlEqxYLCf6lJVDnmW/QMUZtWxD0PUXbA
	iifY/zB3pOXmVCkrJ5tfaxMalcq9NUvM3IOb6dEN2PeURr0RLtpIJbpPzmpFd1Be22SSSJtQOL5
	Xd9ZKt2xtYgP4LmcadtcwwhnlcM6UH6Yx3T463pHBp/8nfjpbGVlhbQXmG6xsy2nM3Md+n43rAE
	FmXb6i7bYCRmWfBXEW9RJ8fG8tOf2+RGpU684P5LZ95rEVhtPm9b/Ea04nIe4KEv/qmGujKTCKb
	W9HK8AFNlxg7CTdoax98DfFRevTzjXIWbw99I22zswSD39cRhtb3IgABBm4R3Ad+of0pLq2a25D
	kAsB19oQQtd64NyxVXHe+DX6g=
X-Received: by 2002:a05:620a:44cc:b0:8c5:3415:acef with SMTP id af79cd13be357-8c6a678e79emr110003885a.55.1768511161694;
        Thu, 15 Jan 2026 13:06:01 -0800 (PST)
X-Received: by 2002:a05:620a:44cc:b0:8c5:3415:acef with SMTP id af79cd13be357-8c6a678e79emr109997185a.55.1768511161128;
        Thu, 15 Jan 2026 13:06:01 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59baf397672sm155740e87.61.2026.01.15.13.05.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 13:05:59 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: marijn.suijten@somainline.org, swboyd@chromium.org, mripard@kernel.org,
        abel.vesa@linaro.org, andersson@kernel.org, konradybcio@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        robin.clark@oss.qualcomm.com, jessica.zhang@oss.qualcomm.com,
        abhinav.kumar@linux.dev, sean@poorly.run, airlied@gmail.com,
        simona@ffwll.ch, alex.vinarskis@gmail.com,
        Mani Chandana Ballary Kuntumalla <quic_mkuntuma@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com,
        quic_riteshk@quicinc.com, quic_amitsi@quicinc.com
Subject: Re: [PATCH v2 0/3] Enable mdss1 Display Port for Qualcomm lemans-ride platform
Date: Thu, 15 Jan 2026 23:05:56 +0200
Message-ID: <176851111168.3933955.1978286766565229688.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251125105622.1755651-1-quic_mkuntuma@quicinc.com>
References: <20251125105622.1755651-1-quic_mkuntuma@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: pTJTIMsJmKumTvem2kv0Q2WjbN8mV37v
X-Proofpoint-ORIG-GUID: pTJTIMsJmKumTvem2kv0Q2WjbN8mV37v
X-Authority-Analysis: v=2.4 cv=ANDFHcx+ c=1 sm=1 tr=0 ts=696956ba cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=e5mUnYsNAAAA:8 a=aXzuBbYBWOr-X92n1-oA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDE2NSBTYWx0ZWRfX2n3v2N/7LT7N
 luMcwnqz6Z6I3W4Udhm1d29eprb0PRLbp6CDJFTJQY+VNjZMLLpKp3YnHYMcOTG+RRG7tgCZKBS
 7Za7pa4/bbk3LydCa3fKB3Gkl8EgU3Roi/BiRof554sws+lp1OxiiVh178/y79P4OQDfnhwQx5U
 S6EsMWTewJsXNTALqwSYGeYUeGdSo0LQ6arxP6mcD4GStobyzsxAlvFNkMfF+6bWXmEVhHzm5rA
 YdgunP1K+W36NZC41LoOxstaGNi2P3kpSI0hIbRRkeyyUaBpsjv/CUv8OeHv4Yy8Xjqp8bi28M8
 vdL4WEOzoLvMFsVCUNmltvBpL6RC734xBTw1J0K+hWvVXMK5Zh0PUMXooLypx0tIP/D9vn5BFU9
 nuHPt6396p+BGM5SOdzD65MWKScfbLai6qrz4Ycadds3pYWwFVLMnOPgdAYf2kVp1Ju+lFWhS+d
 uNaE57ybIhsxoiTTBLQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_06,2026-01-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 clxscore=1015 bulkscore=0 malwarescore=0
 spamscore=0 lowpriorityscore=0 adultscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601150165

On Tue, 25 Nov 2025 16:26:19 +0530, Mani Chandana Ballary Kuntumalla wrote:
> This series adds the DPTX0 and DPTX1 nodes, as a part of mdss1
> on Qualcomm lemans SoC. It also enables Display Port on Qualcomm
> lemans-ride platform.
> 

Applied to msm-next, thanks!

[1/3] drm/msm/dp: Update msm_dp_controller IDs for sa8775p
      https://gitlab.freedesktop.org/lumag/msm/-/commit/1338e8ae4084

Best regards,
-- 
With best wishes
Dmitry




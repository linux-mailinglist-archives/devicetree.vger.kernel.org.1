Return-Path: <devicetree+bounces-226023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 785E1BD2FE6
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 14:34:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id F1A8D34B918
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 12:34:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C91726E706;
	Mon, 13 Oct 2025 12:34:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cHKE6Szt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D96918C03F
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 12:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760358876; cv=none; b=gFWZEcBHS0wl6FOpnmhkKWftYSsh9d5suLLRwdMl4qcGyqR9vRpHp32poeM4DqqLsMQ4c7b3yDwb0tak1rhUXaNf5DBaq53ACnva1V4hz53so77vEy/JaSSmAXYcLlIZtA6ja4m+n6gHPfUTWMvDJ5KHtkLpQbFce8VcOVPdljQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760358876; c=relaxed/simple;
	bh=O5IBxsN6ic5oG/r8QyaBfjvgKnYuqZyVcNxtNddUJ8c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Bayw5SKmtfMoZg08XVGF+S5nk3Sgtvq5506Jhju5X1t3vMXoMFlRXM1GCeKHvIL04ukFjeTE36n3uDis2UpJAYvt8+RpiC5BQ4OCZy4Kl/lOz/8oKFZTxVXR2XyMzgO3FZ4XhXwzdZYfE+vvfx2SG7AZEVnxrMcSFmMDg1Ls3n8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cHKE6Szt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DAtpp6031249
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 12:34:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0c/YLYaDMoEGnP2p+UDoLSwW
	bwVJnzjUv4KnwNKCfEY=; b=cHKE6Szt423RB8gknU+LDvdj0Cuw4qswyTZSaxAw
	3Vln1wH/aKoGO3yopYn8nbYnpcw2S5NHX7Sm79VwKwLYqcQLc+ZXI9mJfef7hziV
	AKyPZ2BlBcuN5v238ZNwTY7D5BQ55vFbmhOXJXLfe40w7C6yQPCZFlJkWD+9Scay
	ynngzBZIK4MUfj9Pj6V8NhLYw4l6QgLJ27bWbS19Ao6+8gDR/kWDmmWrjCyZLQJS
	Drz4A2m+5QZP+VC6nw07jEHuiMMqSvOsKt+L4sJGzjlqmM7rq0O7DHaJwuV9FO5I
	WjOXqD+QR0hcatHH0bdFdVzbAjOv4iTSBuOaVcQi0GtIuw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qff0mgk5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 12:34:34 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8217df6d44cso1984559885a.2
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 05:34:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760358873; x=1760963673;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0c/YLYaDMoEGnP2p+UDoLSwWbwVJnzjUv4KnwNKCfEY=;
        b=FU9pcuK0cFj7OD357aP8Xs4+zSuIULcCGcaFjM1S4/XwUVAguu0pVvTbW/vGVszAGb
         fFoTdA6GG7Xq1hpb8ZVuM/YYU6ZMPUjsRBTo9TddWzoCTyRpuA885UtVp7zqmbljgBUu
         xMhZAQ1mnx7e/HpJZIT2093Kca/VWzdXpwnuxkm5avWnwyOgWPGoJlsV72ov6Wl4/hFQ
         ScqhPdLfsYDTrlOyVqoC8RhF5/DTvZxveh4qXnYNfcXBcgi5I0hcipaa6gR1KLWYKP3L
         xbc5XqQIFanqGZO+uGBwhtgYGGjYRx4Bo/Ld9BuEIQwmDgcA1S/F0X9Hq95fCA1uORSo
         XjCQ==
X-Forwarded-Encrypted: i=1; AJvYcCXkQ7UQnxFExeDBzOoapu1sw0d3RBM0b6ED07ExnQDWndi4ZqOJcyad68THDMbZujcuY4TeBEzTJuvd@vger.kernel.org
X-Gm-Message-State: AOJu0YygAc5M6rG83UsIl78N0VUKIocxa7Ns9mc4Ai4FiWDAAn/loaHz
	1YF9entTk7rWluIM0r/84vJKpmkj9msB+l1HhLsXTf0rLSj3tEHZvtIp27DEc6xTZ1Z0fXHFtMW
	R5J7s14TfoxfamsqkpTk96ntEDsFHVkoP3Uy83UkQhxLPnoqP2q1YNyfZuKzVxt4B
X-Gm-Gg: ASbGnctEXd5xF28dso/zpWtWCq0k+E8ReG9mCwkugCrg3IjGKs9yFZIBTu4clAYTn5C
	9HFOka+0lHrRstSowXf4kfZUyvhFvj9yeXoMqTsJpHIaNlxC08069uNgC2p0UGn7ofVfJjFvDKz
	exWHqM/y/0txcHDwr+0H9w9ZzwruPbB4EkZgR1Hy2FFPrVreUzg0mXwTMJUtNCzFwwKTGCxSt7T
	tuY787R7Kn4Ce0PLdgg4Lhl4QYQRWb9b+hTn5sMwUIXJ2tGWY0ufFJWDortM6A/3FPKp90afc4o
	q6dmiOiJUsNl4VAqS7wwZkREgvk8aRaWqHsIBKz4qBS3fIW1gjTC/vmWRVKAg0+jcl1EyIMUbAY
	lfF6nlYd5KoEypAkbRZR9UFJzIROOqbzyoDCJnYVYyqdCQZNcyXmn
X-Received: by 2002:ac8:5d46:0:b0:4ce:9cdc:6f2f with SMTP id d75a77b69052e-4e72122afacmr71752441cf.13.1760358873373;
        Mon, 13 Oct 2025 05:34:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGNbh12YwL4Iy4NRipEsFChMHtKqDe+smfm+D7B0YFilvKsxmQIYfhkB/7L1zjAmITtmN+oiA==
X-Received: by 2002:ac8:5d46:0:b0:4ce:9cdc:6f2f with SMTP id d75a77b69052e-4e72122afacmr71751921cf.13.1760358872891;
        Mon, 13 Oct 2025 05:34:32 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881f862asm4116608e87.27.2025.10.13.05.34.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 05:34:32 -0700 (PDT)
Date: Mon, 13 Oct 2025 15:34:30 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ritesh Kumar <quic_riteshk@quicinc.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        jessica.zhang@oss.qualcomm.com, sean@poorly.run,
        marijn.suijten@somainline.org, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
        simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mahap@quicinc.com, andersson@kernel.org,
        konradybcio@kernel.org, mani@kernel.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        vkoul@kernel.org, kishon@kernel.org,
        cros-qcom-dts-watchers@chromium.org, linux-phy@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        quic_vproddut@quicinc.com
Subject: Re: [PATCH v2 0/3] Add edp reference clock for lemans
Message-ID: <7jmk3txdrnit6zn7ufra7davmomggd3graizdu6wqonp3lljza@mfnxt2owpknq>
References: <20251013104806.6599-1-quic_riteshk@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251013104806.6599-1-quic_riteshk@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX1AUq+WpAQ29h
 CGFzG5yMgUk9m6U8BC+VkP/zuUYerBbaOCDyHwrTRgWn4IvUEIax1FNPTFQmwWbv5w15JELiM1X
 7/HceNoLmeDMNFGaGMJzuaB+H+9kyNP89BFyL4tSVX4HjmYkOHeCWYtLmdAGFK8e8nX/AEMrF42
 l3qc9/P/rl93eoLA/+S/29ZLt19JzLmYYsEF412TBzWp9Rl1KInl8gcTGuzsLg+rZ7DvGPb1H+c
 wBOpt9QsnpzdgeJm8Ka9WGFu/AhVTDP1TXxcaghWmDJHmNrYqKpYzwBBT1ftD5qI+O5HC0MD6X6
 YxAxj6pWzw1h2t9Odn9WXxCd9emvBGo1oinjp1p6I0UaDz2it11uP0iaKR6Oc3rMpcKf8Fn8OU/
 tPkJI4DhVOBi5S2Jz73bNDA86f8yRw==
X-Proofpoint-GUID: L4DmOnjLI6ETb71PZ9KcbTvwhPNnRFLl
X-Authority-Analysis: v=2.4 cv=PriergM3 c=1 sm=1 tr=0 ts=68ecf1da cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=sf-Njp88EExxdhEklOUA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: L4DmOnjLI6ETb71PZ9KcbTvwhPNnRFLl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 clxscore=1015 bulkscore=0 phishscore=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 impostorscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018

On Mon, Oct 13, 2025 at 04:18:03PM +0530, Ritesh Kumar wrote:
> On lemans chipset, edp reference clock is being voted by ufs mem phy
> (ufs_mem_phy: phy@1d87000). But after commit 77d2fa54a9457
> ("scsi: ufs: qcom : Refactor phy_power_on/off calls") edp reference
> clock is getting turned off, leading to below phy poweron failure on
> lemans edp phy.

How does UFS turn on eDP reference clock?


-- 
With best wishes
Dmitry


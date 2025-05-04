Return-Path: <devicetree+bounces-173470-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BCD2AA87DC
	for <lists+devicetree@lfdr.de>; Sun,  4 May 2025 18:15:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 36E333BA11B
	for <lists+devicetree@lfdr.de>; Sun,  4 May 2025 16:15:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 450611DF993;
	Sun,  4 May 2025 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aZjDiq17"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A42E51F3FDC
	for <devicetree@vger.kernel.org>; Sun,  4 May 2025 16:13:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746375233; cv=none; b=SzzEsnx3Oij9Edkgar681YYPVG5TRg3hF3Dpd7HBYBzwoOLNZYtxsd9K8u6J/N/gvGAbWXVPb8kt38ARWriKzYFbvbC1ehTX6syEa63Jdj3IIbKRlGhaI3uYqNKYf33HR4IRpgjEG3L5OsurWJK2CxolJWNDh9lyYEqNDbQfEDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746375233; c=relaxed/simple;
	bh=97RKXDzDoG8OCb/93VmDNkU0PVNnI64ZdE+LfZVjE8E=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=TUV2GxysMXYdeaGyXN3xSyCxJoihl91FNZSD2jcdSaZxVCMgH78kckvf46AD2pPKYkrj5aNzlMpSHxpMaEoaGq+QAyy8+w+uFGMnUax3TKf3o3mSZteDV7TYW0ateeT7LWYa7a4jdz6xiQ8U01iGiIh5MrYOlx3IggQ3zWPLuz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aZjDiq17; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 544DH03V008222
	for <devicetree@vger.kernel.org>; Sun, 4 May 2025 16:13:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6kXjbNrzMGzMmwsR/qHDXl5YJYMxf7IlPJm6MXrGTCk=; b=aZjDiq17KIhl1ALW
	clqtbi+CIZdf2/GxD1LQVuQLnsOWSN3Sc2+Tb9lKmIKCJHaUzRLENzKHOXxRxdbl
	+kxerPxTRIiT3GSURePl27YOfEoeg4pjbKH4UPMLMbg+7lthLZLzPJOZRxyPk1rI
	cAahuifJ25pVkQ1EUSefDjPRMo/VGLRfE2bnUVYJBXHE6c7uw+LVaNwc1KvsRwXZ
	XfjjKcJ19EeqqmGm0FXFb1yiVvMVTLIF0Djo9VxBFjqZnFJjqCUxm8db39U9WkMd
	stwaAP2O6Jww1Sep7/uHuchriqAt+49mTUQRAZ4T4ofFk23M0XCxGNRZC/65P0cW
	G0btTw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46e0xsrpxq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 04 May 2025 16:13:50 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c544d2c34fso554204185a.1
        for <devicetree@vger.kernel.org>; Sun, 04 May 2025 09:13:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746375229; x=1746980029;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6kXjbNrzMGzMmwsR/qHDXl5YJYMxf7IlPJm6MXrGTCk=;
        b=dmIM62w21PARTa8UFKZI4ZPPjaAq1WcpfuEwgy7fGr/qN3ClrRRtiRrNmKwW3kVkXk
         tuN25nqGfI3EudrFmXUqkhRLoqWk4NqxfsZNAqJGaz4PdgTVoxew+Syu6z0HU7Mf06mj
         ncE6dnNuHX8vYQHWj85Fqesmy/Cqos96qEh9QrBBXuRCkmC09FlTUi12qBhRxDWVmKKK
         wfcxFczGGIiOopwLU5hTrPWpWtRoLH7Ku74gSuO7DKYbUI6fH189YfCnohhbfSur3Lic
         HD0yuOc2BfNWEWYGSbNxKyxhJN1T7yrl8pxmhE0McrbtuNtjq4YgqrG5nTGCDdFusBg6
         QIQg==
X-Forwarded-Encrypted: i=1; AJvYcCVc39+UR/TBXIRlO58WGUZSCLzmhyjNHOR9tEU8z9sa557RgVAT3kb9E+iMZ4DTFi9nVY9tpZP2e9eX@vger.kernel.org
X-Gm-Message-State: AOJu0YxP0rZX4bLuDDqBHo9+Rx8fqn6UuP15/ytXIOwESf3AbeOg2u1P
	efHz2OvmKk0sO2QKZevahCdKR3ReC6BzohcK5uiyaitpSXANgOLhyGtEVWLC8SIFpPmZRr4WBzc
	BjvfY4qS1FTu7DQIlQ6f5imL967eXP8ksc4/Z1Efd8ine/ZG1XIS8Xpxeoy/e
X-Gm-Gg: ASbGncsASoHaBCJKHDF4Bt+R9s81ahGxJjpIzgsd+dSnLPVSAe6WGURezIDzrBZTISw
	+wtQdqCP8aJDOolwVm9CzIW9QXIjPQf47OYO4WVEq4I/TLfhmpmMrMWscgoDCxw5zghBqXh2KAS
	ohDyySqGDPgEqNh3oL1Of8kfx5elLio+uOfZCDheNZ6e7per8i1ar5XaEsVQoWQX+fc6dmFwmti
	3Sm9GM/Fhi3ayC3uy0Y+GBiVkAq2Qbv6APiwSSxpIxnH2CV8pNXQtmPiO/NDM0CKnZmV/1icdod
	jYcL78BWhCR4XPlHL/jz9683aJQCvSbQxxVMXJO4U/q297U629eUxjww3q4Nh92wwNTGUY31wK0
	cIhLLZ9Z8Z+WpcRms6Dy4ajoY
X-Received: by 2002:a05:620a:bd5:b0:7c7:bb3f:fd40 with SMTP id af79cd13be357-7cae3a89beamr601652185a.5.1746375229641;
        Sun, 04 May 2025 09:13:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEOpfARWuH6M/BB8J4jIJ9/rRDdEqKJLyqrBgH4bY43WfHx9v+3pxeLlRyLuaD9LSQ7iLIxnA==
X-Received: by 2002:a05:620a:bd5:b0:7c7:bb3f:fd40 with SMTP id af79cd13be357-7cae3a89beamr601648985a.5.1746375229307;
        Sun, 04 May 2025 09:13:49 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ea94ee937sm1335231e87.142.2025.05.04.09.13.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 May 2025 09:13:48 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Lypak <vladimir.lypak@gmail.com>,
        Luca Weiss <luca@lucaweiss.eu>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/2] Add interconnect nodes and paths for MSM8953 SoC
Date: Sun,  4 May 2025 19:13:28 +0300
Message-Id: <174637445762.1385605.6437405000222393314.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250420-msm8953-interconnect-v2-0-828715dcb674@lucaweiss.eu>
References: <20250420-msm8953-interconnect-v2-0-828715dcb674@lucaweiss.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: F7LghhzQGGUkpqEgFLH7LpeX_zIC19g5
X-Proofpoint-ORIG-GUID: F7LghhzQGGUkpqEgFLH7LpeX_zIC19g5
X-Authority-Analysis: v=2.4 cv=bdprUPPB c=1 sm=1 tr=0 ts=6817923e cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=e5mUnYsNAAAA:8 a=EUspDBNiAAAA:8 a=j8xinkR703XPaYax9wUA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA0MDE1MiBTYWx0ZWRfXzi2GYIDnzkIa
 WLkTVDDvDcSlyBPDwkO0FLU600PLrfrrn6yNqqTqSPO9f1oXMiyH8gibadlRdEFdxKyYA/OrZXq
 Nd2K2ha3KU/Fooa5IDNtbUNrMW+8+DGACBAsQfJDixAru8QBkuYr73JzNDVbkz9E8v2Lousq+a0
 K1AvjbKcs/ehYiptsaksy6vA8IMaxH1BWJmpplUftNp0bRsB2gN4vlUZRYBh38x7Xue4+/KS0hF
 kq+6q5AZ6GD5fZszHizvMbRRqsw7iEoR/oRHmAlPql5/lW7WB4Bz3lksKhsqRPR9YVcASmYEpRU
 PrBFM6vGN0/bjEGwcuNi6FlYbzD98bE8aX78TRQwioWUfa9C106hfcoiW91r+jUnGP4ur1Z+myU
 KJADBaNm2kyib1lEPM63AACL73upJCRocakj6QuY2WqOQEk1e447l7qvpsIA1bmEz3FOODqX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-04_06,2025-04-30_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 phishscore=0 adultscore=0 spamscore=0 impostorscore=0
 mlxlogscore=853 mlxscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505040152


On Sun, 20 Apr 2025 17:12:42 +0200, Luca Weiss wrote:
> Since the interconnect driver for msm8953 is already upstream, let's add
> the nodes which are required for it to enable interconnect on MSM8953.
> 
> 

Applied, thanks!

[1/2] dt-bindings: msm: qcom,mdss: Document interconnect paths
      https://gitlab.freedesktop.org/lumag/msm/-/commit/6694d17843e8

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


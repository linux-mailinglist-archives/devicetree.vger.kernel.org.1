Return-Path: <devicetree+bounces-238725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E644C5DA11
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 15:39:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0A4664F0632
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 14:28:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44E43328271;
	Fri, 14 Nov 2025 14:26:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fCxaXnq5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PZSEpPhh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B75FA32721C
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 14:26:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763130407; cv=none; b=tlUaJv6GHdy3TCX1oa3NExjDTUYDW8d6Xayr8BwXzt2InklvxvOFkaE2gWJ8stzi0xjD8XdMHP5ndRU5tlOPkt9BfCyAR2S970P2FvzQUTh+U86Bibg89LbSFOA7ZXwIAVKNH2LLzNNcGmqeAWr1j1mnrRngU9/66iufUconEaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763130407; c=relaxed/simple;
	bh=XZjtWwBnTJarvVpmLfN3yLNaEwxrZ5c4GVHO0Ty3FcY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=XpDtlXSLkerESZqf5MlO1Ozm11YPhbR36PT0J4fv3245GdPcRCAH3pGBXnaUwswfplMJDl1tvwMejVzMPfFyUpoqaZPbo5PCr8txWaNGXWG9PMIWu7KGSfvVm95oGpsCP/HvYDmDVVp2tteI9jL+TwuiBrWMXR0EcQTh0mNLEfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fCxaXnq5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PZSEpPhh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AE8OTCV1581110
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 14:26:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Wm08Oj7Apo5HgrQPJ3V0ulymMOQiyCRSYJ12wElgY/A=; b=fCxaXnq54yS74FBw
	6RHBjpeXn5Qr39HTyXLbNeEq2ik9hoBiVW0ugwCFG3qM0vQ2RGwte7C50kqnKTpN
	IlNsalNlglxG4beIZDzeOzNwRi3SFLklmbqW9ueuwu58sEqGZIBpMeetfCDS097u
	yqoSmWjSFr7ilqZ/DpUO+SPzFt6b/p1tN79tLg5vujL3UQeK9CJ4khRDPUIu0mlN
	s8Prgdq3a3rsHtesDHTZQHzQe61/tiqJD1COuxhI2tSxiVND3Rx49rSm7XXhYaaU
	aufzXSRS/6Hw4FHdVNwzwRWwqqgw9dPqeVQzRG7Af63l1DG3wzOC48TM72RfPmNe
	2I0nEw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9ftexr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 14:26:44 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4edb366a926so27029031cf.1
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 06:26:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763130404; x=1763735204; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wm08Oj7Apo5HgrQPJ3V0ulymMOQiyCRSYJ12wElgY/A=;
        b=PZSEpPhhn6AaI0D72h2xiCF0dBUeUawqDUGilZS8tbhWGopiEsZiDnZcIyQA32PlxE
         RM8IXFl00cZnHMeihG+qrvp7CwT8IilzpLHyM8m+boGyyxXd53sqsVOZWbPY1hWSz85F
         yOtzBlhOeNo9DCROmhIUWlKOWaPfVBrdqqz7+AjOH2ek64d+pNNF3iAO7QiM+XBEbBlb
         +wsdrmV7YLrhHIKrkWJ54mw1Qou/RoBCRX13kTNrjryB5BvMsn+n9a30XO+87KcwTD78
         qJpHtkf5VyjrLfTyNYn6A0sY8uuJLlpXGpYDpHXWBDj314rLokoWPYu8E2p6i7iXagR+
         LnZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763130404; x=1763735204;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Wm08Oj7Apo5HgrQPJ3V0ulymMOQiyCRSYJ12wElgY/A=;
        b=bVFmI/nZqqTs+/rYiL0lbrsKd/0KLoK4yf/4zN4Q7k41KTgO9TKUYphI8lgsttDbXl
         s6ctVk1fIfBMlhywUXvVfrV8VvQRQodDagaEjGo6SHYQDlNBapIWGEexJ4x+PvGI9Tui
         jlCv8NOz0b4qsACpSnLSKeEbz/WRy+NfWLSUDLWdFLlhpY0dMPvVa83cY0fuXXfJ3qDu
         lqOD4m6IBXsH66fdzBXHLmsO/WUphR71ZRjDqbU9WiursQvvxmtoD5468KWzssQXJGtT
         o8vwhbH2gqtsMSsE+WR7MixKcLwQMtDg4kfajVnaFaRuFBxBdb9o/pecaHjg7d8mFZ50
         jLAw==
X-Forwarded-Encrypted: i=1; AJvYcCVbA+PrhxZbidjByYJMPQDZRDgCQFcKcIX+5E2Ke0CrJ1FWSP4O88HG7fWbv28xOpvMqBVSP9qhCOXC@vger.kernel.org
X-Gm-Message-State: AOJu0Yx031KyvoJauTiTikVf7zBAOUmcu4eYyUCjUD9bjWldRoVrZ4EU
	8mOrFdKiw5n6kN5p58g9ExoUf67Zc3vJZ0XHTdxtd7yCcK9r0y8o4sOY6xXUaj4wAs3xff804Wk
	1nc5RQ4vGSkusUhHByNgnkItG1BaSBZRwy73jrhT8DYTRfmqyjBZsMTcIkJYl4Zv3
X-Gm-Gg: ASbGncurGt33QH0tO7djypL0NBNFWi5v/LTMlLWO4OcdxCqvAyGcUTj7PQKbU17E3hz
	Jhq34kk33Kkbb69rDBp77xBPWS8YanMzpYWSy97KaaqeXMtIz6PvZ9YzWqSXWGF1vp5gkip/tr/
	B8MHbtuWDSxWDmnE7hvxLqPNcQoCvCiT80T3l3i8iAPGUvs8no94a2ybFxangyjioX70OvPO6Zb
	64H9om7lUaNSqaMRLMoy7pqujGAmhpIUivKnXgDrT7Z+gGlkZ4Xv/ZeZIfQSN/Mwk3gIPxX3s9N
	8D/fqNUyOvPp1y/Oah5JiQby9dh/lHdlcc/FR93TuL6nOb78XKCrdtiK1qyZcGtyKsl5mHLH5Ve
	9T+TtCA499WKvdaOvedyiqwcCFdYtWHd3dkYV4vHPqOobOFgL4u/rFja8xLzS2wU8YtWcLfNNcU
	ctSmO0PkRKZAy8
X-Received: by 2002:a05:622a:19a5:b0:4e8:bbd4:99d8 with SMTP id d75a77b69052e-4edf208a86dmr48911941cf.37.1763130404194;
        Fri, 14 Nov 2025 06:26:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFm90pluc4Y4JC2rHHO8mSgQitbLfLgaksRl5AUlSTdas0MjBH91PxBwSUSfWQtEunJDliLzg==
X-Received: by 2002:a05:622a:19a5:b0:4e8:bbd4:99d8 with SMTP id d75a77b69052e-4edf208a86dmr48911371cf.37.1763130403646;
        Fri, 14 Nov 2025 06:26:43 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37b9cee0cabsm10318821fa.40.2025.11.14.06.26.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 06:26:42 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, li.liu@oss.qualcomm.com
Subject: Re: [PATCH v3] dt-bindings: display/msm: dp-controller: Add SM6150
Date: Fri, 14 Nov 2025 16:26:34 +0200
Message-ID: <176312947282.1737000.2726577602093999056.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20250916-add-dp-controller-support-for-sm6150-v3-1-dd60ebbd101e@oss.qualcomm.com>
References: <20250916-add-dp-controller-support-for-sm6150-v3-1-dd60ebbd101e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=SdD6t/Ru c=1 sm=1 tr=0 ts=69173c24 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=e5mUnYsNAAAA:8 a=-ywfm2TNeMNqkeX1OTcA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-GUID: icFj--V3J5cvH65aOxQvRkkmpDX26JaL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDExNiBTYWx0ZWRfX4mMAyJSTjQ5R
 W7s2dBbLHexfPu8jwZLSL9+04Z/tpIX+XDS9mMNcXOsMzTm2JDzl/cvWHh631eowZvIvbImCTri
 l/HQ70upxSdAM7gM16pl0DJcVAOX3hxcsksWFgh2tD00Hqp7b7drlYC2CrfZnMp3mfzlzOk8NaQ
 uAjzFxIMpvKYOC9ts/KQFZuCczgO0ex8amQPS+4/EloQkAM0obMnBrnGmYHcl/y1Rue2B18ScKU
 UW7OIryAoTv7CQ0pq2jKW/4RPyn6rvFjUWVd7bRewZtOsd3YWIlPBrIGcILJv9bCdYkchpeZ4he
 FGInLqLmG/GlfCezv1TjXqNLTnkmzBPLH3B5AkJBaDYWhnvL/jx16DmRIRt1z9VKz6jUPtE9t1V
 Y9brnDKfEwMwtT0k6If+vu8EFx40gg==
X-Proofpoint-ORIG-GUID: icFj--V3J5cvH65aOxQvRkkmpDX26JaL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 impostorscore=0 phishscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140116

On Tue, 16 Sep 2025 20:11:03 +0800, Xiangxu Yin wrote:
> Add DisplayPort controller binding for Qualcomm SM6150 SoC.
> SM6150 uses the same controller IP as SM8150.
> Declare 'qcom,sm6150-dp' as a fallback compatible to
> 'qcom,sm8150-dp' and 'qcom,sm8350-dp' for consistency with existing
> bindings and to ensure correct matching and future clarity.
> 
> 
> [...]

Applied to msm-next, thanks!

[1/1] dt-bindings: display/msm: dp-controller: Add SM6150
      https://gitlab.freedesktop.org/lumag/msm/-/commit/e56ff0888b2f

Best regards,
-- 
With best wishes
Dmitry




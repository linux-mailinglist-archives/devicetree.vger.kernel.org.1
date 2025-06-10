Return-Path: <devicetree+bounces-184539-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 265F9AD45E3
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 00:25:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D44A13A6E75
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 22:24:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E80328B7F3;
	Tue, 10 Jun 2025 22:25:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eGoXBpPC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CE1C28B7D0
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 22:25:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749594309; cv=none; b=haqtbcVMvwKVqYm4vWwARgakv2xm+iMULQnpYyK5xiynfea9SFB0bY286biWCaDJEnO44ECccbcZglt84/MtyJ2nP29u0KZRsl4SfATVkHBh2Zy3YkrFkBouWIacuVRRsB3yntvaMW/7JACGbV1u1mU45zMBjWRw85DT6E5b8Bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749594309; c=relaxed/simple;
	bh=tWylvwk1q5EhEuwnM1aoy4bfpwET3Iij7dZvV/y5X4Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bMEN+gV5zjaF5ZT6t3c4jQr1Gukd5BT9vjEm/toEtgVRDA1C/tip5TNR6lldQ461jJn2z4LEQpTsDV/g/2FJUrIo8XCqTZOewVkDrpfXY+4QKnDn5uX7JmgBGjQJ89D/VKQJHDfumrDgWW+ROFqtbV883cQpWU810sAkNsN4ALk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eGoXBpPC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55AIQ1a1022371
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 22:25:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=XDHd4ci76N1m7artzB98ac4U
	VLxKbD1UASxKG9cjK+o=; b=eGoXBpPCA8IG4+slW/R1e4StfS4i34M8KB9e9FoQ
	Lv2L/3o+DBHu8wLEii9tu5eomqy3mpHA8gMYHkzplcM0cWMc5zye38Iuv3IW6Lp3
	A0+leM91Up9WgHkVgiDuXdR58QAInOJ+PqE0CRhsN0C+rnoSBq+PunorAt8ekmwd
	/lmsycRnNt36QCNcavTjn4fPo6C4u9YiW2lpOMbgKJh9f0cNSLelpRsFx6tYoLby
	gjNoeTqYa0g8IpHSybMKrlgEcx+GvE1Ea3EeI398mOiRefwfyi/JtsVMku78GXCI
	3N+JZgLoTBlREVwdNFIO7YopgO8rRsrihBZ2TjpAQSXU2A==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474ekptnj9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 22:25:06 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c92425a8b1so52100985a.1
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 15:25:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749594305; x=1750199105;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XDHd4ci76N1m7artzB98ac4UVLxKbD1UASxKG9cjK+o=;
        b=HPMs5uIAj2kJD9wTesWmIgnoSpUwbBywhNBZC4HcjOqqFwC1eO321O+aUcD0rXdQC9
         mfuO/oe/yC3gzSy9rr82c3LlpvPtHcXwqoRh4VXdExrdreBJ2bb2o1lnIfCRDQYhom5Q
         mwOrZ/hEq5/NfLKinOiWSnyMwpoEDp4v6qoW75rEuGMIlR3ylxbH9hicUeRPM800QIXx
         mc3xNHkWDD3sslFEOIfTFewNDe5TyUZhi3JZrI4afj8k4GqoF0f/p+G+OuErXEn9tmPW
         l5ijnIZVbSD8+VfzQoER1irPWVc55G2SaAJuZEmjZu5Dd2Ds+7uutQSCqkMdps39zaOU
         zzMw==
X-Forwarded-Encrypted: i=1; AJvYcCVaB7/A0sNTh12uqQtbGbfVS6KXDi8GN5LmNTGKp0YuoovVw4Vc0LQk91SL19/5MvopqQILzXucwIM4@vger.kernel.org
X-Gm-Message-State: AOJu0YzVUZcXq6RMEElEPsx+gjlPkql2irmIu+mUvsVHsiGbqU/sC5B0
	MUFFx4IutW7CUK6S0YtXio4Y92RZpgQ0T0wADXeWHV1avrbM/NrQNJhez5dATgzAg3MdZO69iZi
	nIBCOKa91SgUGMGvGh7QrU7BabPvC9xhhuM7MbL2LMOseo+4QAKVoDBOuNTxeR02y
X-Gm-Gg: ASbGncuY+0wzuIxM6LVMBsYDX/P8rM+zqOZlVi9bVgT+05tWrVuXyzdTe1KRwtQaFi/
	6xPKun082UGg5CCMgNDDr1NSTPLsM/FWCWPmYETvBtf1u+KCsknOzxaNI207DDYMLYHpe9Yzipk
	lH7KE1nuqEnq72ICr8pPTFPKFyoJlgHqwCufw8IGWnUhswbhwTmHh1DLtdFO6yPQw56zsr7vzhb
	WGK3+ChZq7s8dM19AjqYVk52X0ShFU0f/a5fuMpDZLlDnKFkJKbcOm5mfjdMaiZFUhGiy8kkGEe
	wj6tzgZNx6KnJxHBMHgcuExOibjk2t4cJM4WflOuT4AFa5SHMKWKdh17bNlzHyB81sIUUq9ZWoT
	19S9AYLuMQ4VWxazkz6qfDcojmJJDRoJy9zc=
X-Received: by 2002:a05:620a:3184:b0:7ce:ea9d:5967 with SMTP id af79cd13be357-7d3a888cc40mr175308485a.15.1749594305558;
        Tue, 10 Jun 2025 15:25:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEEvri0NokR0cixmKJM7ugmHZgyYf1QPIBroXgD4LM3M5FEjj8mAWnMIjgTZswFHUeWxkQZCg==
X-Received: by 2002:a05:620a:3184:b0:7ce:ea9d:5967 with SMTP id af79cd13be357-7d3a888cc40mr175303985a.15.1749594305169;
        Tue, 10 Jun 2025 15:25:05 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32ae1ccdd53sm15739121fa.88.2025.06.10.15.25.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 15:25:03 -0700 (PDT)
Date: Wed, 11 Jun 2025 01:25:01 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        Abel Vesa <abel.vesa@linaro.org>,
        Srinivas Kandagatla <srini@kernel.org>
Subject: Re: [PATCH v6 11/17] drm/msm/dsi: Add support for SM8750
Message-ID: <shj5i5bjauxfuynrdaw4dysx4ypfr5a4tyhjsweroemt4wcavl@anxzkf23onlm>
References: <20250610-b4-sm8750-display-v6-0-ee633e3ddbff@linaro.org>
 <20250610-b4-sm8750-display-v6-11-ee633e3ddbff@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250610-b4-sm8750-display-v6-11-ee633e3ddbff@linaro.org>
X-Authority-Analysis: v=2.4 cv=JcO8rVKV c=1 sm=1 tr=0 ts=6848b0c2 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=Fe6Hossnl1h87qNRHPAA:9
 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEwMDE4NSBTYWx0ZWRfXxjNmeNSWt0TF
 wHU5i/6O4VUW0ygxCBus+kymefwWLJi0UpKUG/Ch3GXB6sbJKM87Nq5vAir81XaFqQBT9lzy6o/
 hOXqfj/GP5ug1JSAjCNLvcDFdfbisiihG3LQ788jduMHHbLDFui3F9Vsp42NlWjWt3ndf+T+nHO
 nRYiDZFf8o4cjRi6c6X/RzX27GKSFyapVrpt+6sgxKr8KTHkjArI613LbPE5Yru8ZMTEB45mtQ7
 nlZvq113onNYrK/yHqt8XCxQCJRAaAluo0lEGJJPXuK8OOeKHt4MZyvdQgiKPNx0ANXNTPG4bq0
 b7DiQK++thf0JN7k30yGfbDcG/gh0eYmoHoU+2/voCmbVLwHbNvZV/HF05Wl2dTOpMseRAhBhcZ
 Vj3HN6rNLNoXIDktST4NHEzdXr5dkoXGYDedsW4bbSG56aV62hH2N9g88gc8dyY6VkoaTCfl
X-Proofpoint-GUID: t_EBJtg46t7ExwQ9VOaViUjV-J7iNhvz
X-Proofpoint-ORIG-GUID: t_EBJtg46t7ExwQ9VOaViUjV-J7iNhvz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-10_10,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=721 bulkscore=0 spamscore=0 impostorscore=0 phishscore=0
 priorityscore=1501 mlxscore=0 adultscore=0 clxscore=1015 malwarescore=0
 suspectscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506100185

On Tue, Jun 10, 2025 at 04:05:49PM +0200, Krzysztof Kozlowski wrote:
> Add support for DSI on Qualcomm SM8750 SoC with notable difference:
> 
> DSI PHY PLLs, the parents of pixel and byte clocks, cannot be used as
> parents before DSI PHY is configured, the PLLs are prepared and their
> initial rate is set.  Therefore assigned-clock-parents are not working
> here and driver is responsible for reparenting clocks with proper
> procedure: see dsi_clk_init_6g_v2_9().
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


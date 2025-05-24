Return-Path: <devicetree+bounces-180165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA73EAC2E0F
	for <lists+devicetree@lfdr.de>; Sat, 24 May 2025 09:19:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CD7569E5932
	for <lists+devicetree@lfdr.de>; Sat, 24 May 2025 07:19:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FCBA1DE4CC;
	Sat, 24 May 2025 07:19:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Fe5QxhpO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 708C714EC62
	for <devicetree@vger.kernel.org>; Sat, 24 May 2025 07:19:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748071175; cv=none; b=MontENEM9uKT+gzfLHFdOn7v2FYYX9HhvKyz7NyRcHXaQhQAAG2Z98TBe244gjxPfIUOf5bV1TU5mAcUSnYrHHmGN8MFXP98+oteycQ+J0oqycdom0Qg9EAiYPfva9ZoJJm8LSokv7pVi/O678FpQ33u9aeGmbUY4cv7bZWGkas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748071175; c=relaxed/simple;
	bh=7wDatq/nVoOgOqUWplVzWuXZOkxz+1v57oGpjYW15yo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=DS49PKsHy7yQSLMnsR26GL4a1YrXt0AZLRJYrG/ihQ6aXPDHOydQZ4b+YdgLHBqk8m4/bcI8TV6m1ruPij3OBsd6ciEyV5zi60YjgRiaq1UdXgsRSQBaFI7iNZGcEfT4Q4cMLmLyR9o85S7qpdcaAJjBV+gQixOXa8z71E+s510=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Fe5QxhpO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54O5bcB3027393
	for <devicetree@vger.kernel.org>; Sat, 24 May 2025 07:19:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uZJMAdjzE58M94TUbCIwk+R6aGX0UfRYgArPmJUsuN8=; b=Fe5QxhpOJosUM/FH
	K5J2CRxUFHc90Ea7L6OA0syyvnLvQoxGSRpxpovXSoJ4fZS7BU+1CCkFCegf2sab
	/8fWJusJtJPcUfG40gOdUqmr7RW+W9kAAsS+/l6JbMmW1QS9VswN8QyFL6u4QoT/
	BgKMoIlxTWwltaWHQxF05pr3C+vMfmZPgrHloVf9RAG0mhc/PrrQnFGW+szu12GN
	K1y6fckVBZYMRCfTIf3E+7g87RqOsM0md22f7uc9gpASYm8+suwxDoRftLEEyKEh
	DTRE3x/Qihk3K6Mms/e0hJv/GA55Lm0Q4/sJ1FrWv8guN00CrVCSGoRSnLg0/W6z
	J5ON6w==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u6g8r912-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 24 May 2025 07:19:31 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6f8cb4b1861so9302596d6.3
        for <devicetree@vger.kernel.org>; Sat, 24 May 2025 00:19:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748071171; x=1748675971;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uZJMAdjzE58M94TUbCIwk+R6aGX0UfRYgArPmJUsuN8=;
        b=SyrcgHXUmUJAuFOdmdRely+n+jYeA1D1nv3xTtwyZ+xbNpeR/Zcn90dso230hNllR4
         sLMTx5wPhd3lfWRpFIMsDKdqVGQezRyYmKs7QmwmurDAu1GaHXeAnRGF8vpHRg9k7BB9
         k1xUZ+m6uLwjdVg07CyOm71o62OZ+1yhQTwv9E8ULK5bWZ17f7s9+wPPDiqrTRi3Rmjw
         RYGropBOcOizwacSjBCeMKXoMHd036H+jEDeVv/H+we3rmVvWotS5NeZk5uUkmvOFnQA
         s9nsis07hXewuQeGsg6ETV1JzaVpwBTRY1sllQjFij6bdvSrmh1OVpb/Ls4pcRaj0rRb
         cI0g==
X-Forwarded-Encrypted: i=1; AJvYcCV0RJGv9aVZJaJeCKgVc2AxBhhsKG1f3X0osYXzSdVxjuinrFRkxAplPlO60s9rUkH7B1PnFSuw1tXF@vger.kernel.org
X-Gm-Message-State: AOJu0YzRRj7c5AGR5VZPXtdbXTd4ineFSuFZG72dRGr6W47hbKaK9MDL
	NKmPtRJAGP9oyQ62f1646tTPktc+TFx4C4G3ucFHzP1f/uNKFp46Czw7e4q83c+3us64HEpZPrH
	qhZczYroPXsKRATBGJJ6PDrjFe7N14w+4UripVYrc39K+F7CLTvWv0J4hpKj16cNg
X-Gm-Gg: ASbGnctmIAe2uTlhW9eHPKf+Rk7BnwIMmrm5nN9Ru4MWgBVdqPrgmykmfGCxaNw1wDW
	au4P0m1QqZSsnTWTsytGMH/rTEZhGTmJQoeufEPkeAajf5n3LCIUAK5iIO6BdhgsvAIZieuxZzq
	RjB6qa81UirtbD1FYZsCI0QNO40d8ZKKnEShuhwXtKYyuS/Ju6PvPQrC+5cXHn0VGmcB5YwSLJz
	TE8LbWxJHHDuFljWQNcy9Jli+88A6MwSq4cJnovBD6VqS44wTRBH0WU7YASYmqH5TtSzYVBSlhy
	QrrvVY3nJX+bUFnjBxN9wGaLYy9nixGgkEfHhGpLq4TR+SGdsdUsd7QSOC1PMvKInVVCLCosApQ
	PmvgcpB19VQhL18VP7eHuTJxN
X-Received: by 2002:a05:6214:29ca:b0:6e8:f166:b1a0 with SMTP id 6a1803df08f44-6fa9d2c24c7mr34749606d6.36.1748071171277;
        Sat, 24 May 2025 00:19:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHl8WgQXUDHGPdC+9uqmIOPxrQWcqmJLukZLEjzOr63kyry1yRJpi5fhEsUTvzTCRFye2nU6g==
X-Received: by 2002:a05:6214:29ca:b0:6e8:f166:b1a0 with SMTP id 6a1803df08f44-6fa9d2c24c7mr34749286d6.36.1748071170933;
        Sat, 24 May 2025 00:19:30 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-328084c8c31sm39185631fa.28.2025.05.24.00.19.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 May 2025 00:19:29 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Svyatoslav Ryhel <clamor95@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
In-Reply-To: <20250506092718.106088-1-clamor95@gmail.com>
References: <20250506092718.106088-1-clamor95@gmail.com>
Subject: Re: [PATCH v3 0/4] drm: panel: add support for panels used in LG
 P880/P895
Message-Id: <174807116958.3738483.11651543440541735749.b4-ty@oss.qualcomm.com>
Date: Sat, 24 May 2025 10:19:29 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-Authority-Analysis: v=2.4 cv=d4b1yQjE c=1 sm=1 tr=0 ts=68317304 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=rcFpJ7UuLk0rIOd95rsA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: oQEHhbSLMx9gVkUw1_mXkAwkDxiRpnnF
X-Proofpoint-GUID: oQEHhbSLMx9gVkUw1_mXkAwkDxiRpnnF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI0MDA2NiBTYWx0ZWRfX5EBuMFf0MpVr
 mHmdqVDxjwEtNZuFxgyT24zuuiyHF6xbGBHIwQOfkDtzJPM3j/7nlykF9cMapkFYW8DbGJBw0Jj
 huFS2/IMoDBzir0Kb9bFQa0iNFNo6j+trqKmifUCac4fbCBKSJCLtFfuLhQYLWNPwJC6/aj+zvm
 92fh9m13rjsUL7T0/g+HtFR1fibGkLcWK/UGkTZ7Lz5xga5mSQxs8V6sdv35p8W3wB4XeZ4xfYo
 jHyemPV2vQT4l7/RJ3yD6kTsLk3Ja8ypDZ54D0HWE1HT0jCPy59WH3YKJxHFPXGHQsH1WRjWTqS
 9GFZFRJnHoWOO1adzTgOzV5xKx9K3wRvUJZrVa3QTq6ebS3Tbtlc88Z2GCpE+izy1aAD3Yv9bWd
 i+uBWtegNNeyrE7pHLH0xT/Nu01wy4Sh1iGRNBrpt6S6mVvcxN96hxm36ixQz1k0ahV53e3W
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-24_03,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 malwarescore=0 phishscore=0 mlxlogscore=999
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 spamscore=0 clxscore=1015
 impostorscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505240066

On Tue, 06 May 2025 12:27:14 +0300, Svyatoslav Ryhel wrote:
> Add support for panels used in LG P880/P895 which are based on Renesas IC
> (not related to Renesas RISC-V architecture just the same manufacturer).
> 

Applied to drm-misc-next, thanks!

[1/4] dt-bindings: display: panel: Document Renesas R61307 based DSI panel
      commit: 43adabbe3a7912b2db199a17d446a5d9fcde6fc7
[2/4] drm: panel: Add support for Renesas R61307 based MIPI DSI panel
      commit: cb6c01ead1eb78f7676ea09fe407c4aa1c5855b3
[3/4] dt-bindings: display: panel: Document Renesas R69328 based DSI panel
      commit: 215c73d48330230dc0ab0bbdd2798dd2ce66acfd
[4/4] drm: panel: Add support for Renesas R69328 based MIPI DSI panel
      commit: 9e0f93f7af569c6aee53eedac2c4161ea9d50169

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



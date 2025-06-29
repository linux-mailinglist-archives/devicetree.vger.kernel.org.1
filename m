Return-Path: <devicetree+bounces-190850-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 18860AECE38
	for <lists+devicetree@lfdr.de>; Sun, 29 Jun 2025 17:00:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DBC313AD9C2
	for <lists+devicetree@lfdr.de>; Sun, 29 Jun 2025 15:00:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F14E42253A5;
	Sun, 29 Jun 2025 15:00:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="F0srTDVV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 823D3220698
	for <devicetree@vger.kernel.org>; Sun, 29 Jun 2025 15:00:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751209225; cv=none; b=UUInPUTKKa5anL4ZVKLK+SgECm9gvat2a3N67vs8l7Tf3Q0u/m+Q8nZNaQH7/jkWiSAcK3dEqCpgFlxd3+Lpo2QcQyWoWh0Lx5ZOLzYrxLALbsrvAmGNk8xXvlJdjJctokVn0U/FSCHWt70vMEkd1J3ZmaZYI9L1qQeM/e5CVcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751209225; c=relaxed/simple;
	bh=8ThBrHYseNWTgVIENZvM3X7g4bVp9jFWwMWyTq5gbZ4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l0bqPPhwv8WmEpRh99/Fvtmm6tCV2LfhtVxxOI3dGOqE7+dn2SfE3JgNOnAUp2QZNnp73nf7txAiyHLictbV6HTkODvkaWRqk8zdQ0Kb+cr4fEVdUDO/VHB4HUZjL6nkRu3r/6MTb81XwkRSZoXz0m8UMPEB8dkA1QxM8+1ahC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=F0srTDVV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55TDrWmK015711
	for <devicetree@vger.kernel.org>; Sun, 29 Jun 2025 15:00:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=b/pYUHRY/Pf2sWjUsiTjX3SG
	fPJK5GCx6P2lJBvN2kA=; b=F0srTDVVl/a1cs1pvhgj6hW+AtRw+g8Ez0dCBcCZ
	V++pobwYDVwoxjtbI3tEd6XmEsinw7cWZXgfYKwsyfTGJx+le5DcL9pYzXfezhKZ
	G6KUC9smC17fnW9S2l0P823jYX27SD5RtuPFQEhruyqMSxTWvtYvjXOjKvTEiO/g
	Fv33hRGNJooCPPSnHLwO/pLXSCW7kr/DdlMamZcRh1ihLQeHKO4jOTnFSd9mJjPG
	CHMJH7j/qeP4RrNwtIuMfEzcalUWPerwUjoxss+uFUljoyKKhPFWC++cE1T5019a
	5sYJ+wfvULmDMTCgmsr7zlcs0L2NSt0Z9EqBuCuTOShFfg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j8m629r1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 29 Jun 2025 15:00:23 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6fb0e344e3eso14241906d6.1
        for <devicetree@vger.kernel.org>; Sun, 29 Jun 2025 08:00:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751209222; x=1751814022;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b/pYUHRY/Pf2sWjUsiTjX3SGfPJK5GCx6P2lJBvN2kA=;
        b=DLBmVYzwZvC8eE6TSjMgOdpF2RUoFRSLDKeVpwbglE6lZD8r+fnOONbG6j4U5CWzVD
         TK9WgYijeuTgdJTMocXgfxB75KTu4xZ3tb6U29jjfvT1l/4gJphr1JF2zXR2GljJzpVx
         a7YuyPeVe4eUAcKX6MDaP/GfRp6vGtYdCazbNuu/e3o4tNl8szaJ5wR8+eylhJbEi2uV
         tYM/F2F7mdKNWfZwzLB41vqr9z7PFN8F82qvwFcYNTW7zOXadXBqbs34gw0pq6oT76Bh
         O1tutimzqlJcFnaAcT9UOlRDsBpSb1fsDi1gcG10jkIsKKZcr7B8rYZmh45JcVQ5MK/t
         +Wog==
X-Forwarded-Encrypted: i=1; AJvYcCXC/24VAaQ+LapIe+6/aIQIsFciyj7L2gy2yQnPRT42rVVKOVIbX2IGuXCyP2g2OI7mIy98VGlcq1Rl@vger.kernel.org
X-Gm-Message-State: AOJu0YwzF5IXFTGmQyVBqc8o0t9cLKmqZ9zgSEftUa54KWguyxnKBYKk
	xiTppyl+CGTZrcVotV3L1s0yankRB2Swn+yu4ojzAXZ08lHHdoS3wawqRo4Otb/Z8exJOXQ3MCi
	DseboTwMbjSiCCYe+bisB1N22K+M51oyusaSGC3wcgD/PFTIEq3+EZUoO2Zxs6OvI
X-Gm-Gg: ASbGncsMUeikGHmtiF4YXPNn8f/+gSidFNl2zDiHqAhMWeXteYHUEM3rit6sNmXvEYN
	meViH5b/wpzKnwZYANetB+iSOTATykoZzAFKBcNlwTfPt22g31GQxWtKzhpqWJ9MWYRJ0BEgCKG
	eq0JT9GsUWHVmpR0MWvZf/81dHu7h4hOfSJBVhekUdKGoM2jOmF03j5UUJ3OZHxyTEfQORotHx5
	lluH2UUZeJhtSjPrkfuzwhJw3z0Wq+J1NdUJ/w7LyhfIgSlXUUpsqwcPzK96DutkqcE7FqUIvHl
	xMmEW0NRs/VvNihFarzVvawGktfCQnTArux/rppEfkFR3JaKmLsRrVd0RcKzz4MyNHrJJgucIaF
	UfKcuVIvfETMDTRrmQXf9oSGeycSc6EFvFtw=
X-Received: by 2002:a05:6214:cac:b0:6fa:cc39:9f with SMTP id 6a1803df08f44-7000233d01cmr161995746d6.32.1751209221850;
        Sun, 29 Jun 2025 08:00:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHA5FIdyh/Au6WeKGTSUip3heR3p8gw5t0Q5mmyuMzcIuDDNsAdJQNEGpW6Ol5VHhlRtmZq8g==
X-Received: by 2002:a05:6214:cac:b0:6fa:cc39:9f with SMTP id 6a1803df08f44-7000233d01cmr161994646d6.32.1751209221184;
        Sun, 29 Jun 2025 08:00:21 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32cd2e30e3fsm11049641fa.49.2025.06.29.08.00.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Jun 2025 08:00:20 -0700 (PDT)
Date: Sun, 29 Jun 2025 18:00:18 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Alexey Klimov <alexey.klimov@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
        Lee Jones <lee@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, linux-arm-msm@vger.kernel.org,
        linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: Re: [PATCH 2/3] dt-bindings: mfd: qcom,spmi-pmic: add pm4125 audio
 codec
Message-ID: <mj3jhm6yr3bv5vbyyxxdo4x5niw5quxcal34wdg4vtplipycl6@kjhxtrqvqejo>
References: <20250626-pm4125_audio_codec_v1-v1-0-e52933c429a0@linaro.org>
 <20250626-pm4125_audio_codec_v1-v1-2-e52933c429a0@linaro.org>
 <eb5cdcb6-7e40-4ed2-9cc6-6eff43da353d@kernel.org>
 <DAYBEWESVDJY.1ZDYI58M9OEWX@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DAYBEWESVDJY.1ZDYI58M9OEWX@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI5MDEyNiBTYWx0ZWRfX56u1mqSlyQ24
 tnrGB5BCsC220xD0gOTQSfeXlnp09Jj5/PsfWmvwqRk6gPqnyMj81hQt0QwutLcmHd1YdbFIZcy
 G4zX7lVrHb0/qmh8EsHZxgG004ECLnrqpkRVmNJmba8fUDk/xkBT8Y0c/0Tpfi0Z/feBEmcl1Ad
 /4GyH6iIYURUsQR3sTEx1adVYHHJSOt+2xAqsHAwNaomT2L34TWaFHG3uhythZk6vcXxI9y2Y2O
 Jwv93b+vDhC3kQGDjoEQ+2VKlLrtrPKjC12IGzg4haWYOtNx567g5ZAnjBMmE57Zt99HDshj2ty
 RY1Ao7I13ZFOWEJqLHzU/Su9jf0QyEq5z1H3YEqWhSXlTxft5LU9OxfCm5G1eDH9NkOFMlvt3PY
 4tpwV1ah+AjEJZwTikYr9zYk69fIQP3UEjv+NhGZXLGMYtE2FIrv2PM1ZRtKFg5TDhZzLda9
X-Authority-Analysis: v=2.4 cv=Fq0F/3rq c=1 sm=1 tr=0 ts=68615507 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=KKAkSRfTAAAA:8 a=PcvD3jq4JvdaTR1-S7QA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: Vszv8V3mqW4Jo_fSR3j-8PxHBBXfmsZQ
X-Proofpoint-ORIG-GUID: Vszv8V3mqW4Jo_fSR3j-8PxHBBXfmsZQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_05,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 mlxscore=0 suspectscore=0 adultscore=0 clxscore=1015
 mlxlogscore=495 impostorscore=0 bulkscore=0 malwarescore=0 spamscore=0
 priorityscore=1501 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506290126

On Sat, Jun 28, 2025 at 05:42:52PM +0100, Alexey Klimov wrote:
> On Thu Jun 26, 2025 at 9:48 AM BST, Krzysztof Kozlowski wrote:
> > On 26/06/2025 01:50, Alexey Klimov wrote:
> >> PM4125 has audio codec hardware block. Add pattern for respecive node
> >> so the devicetree for those blocks can be validated properly.
> >> 
> >> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> >
> > Remember to ALWAYS explain the dependencies between patches (merging
> > strategy), because this now creates impression is independent patch. It
> > is not and should be squashed into previous.
> 
> What's the proper way to describe such dependency?

Text in the cover letter.

-- 
With best wishes
Dmitry


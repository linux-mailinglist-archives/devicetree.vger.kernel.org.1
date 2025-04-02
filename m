Return-Path: <devicetree+bounces-162677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E11A795A3
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 21:09:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2006D3B48C0
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 19:07:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 421A91E7C0A;
	Wed,  2 Apr 2025 19:07:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XI1od+kH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B14B11E5701
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 19:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743620873; cv=none; b=XiYMq5Ou50s/Yfn2tqxQsbJXKJqj1nWMFwzYHZytldG6jURsUT+3G5+ar6EaW/YJ4r+h7lOf31zJJyAulTnhemU7K/i5jD68+rk+SWm3bWpSKGBLr2TZhsyjbfhskQ6BV+8ZP+cKNGoVXkD2LxVwxjSIegx4C/SxO6kgcFmSwrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743620873; c=relaxed/simple;
	bh=nsq76gksv/CQjLrekPMlJY9e0Z3fWNmE406AI/XQB2Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=g1ooCRSC2cSkxGX0xlL21ubVUNNC9q7yUOgUGOCiGDAkFVmqD0VtGd1qSz6VBNGjOiQ6KtNNBfhK2tggJNxUVn5A63sDJpKqliQjca/rlFz98UJzizWvxhtPlorgrnuFEY7X2ze8Fa4Rukgh8Ps3WNfciSWYmN7tVIr4iPgJljY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XI1od+kH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 532Euss0008564
	for <devicetree@vger.kernel.org>; Wed, 2 Apr 2025 19:07:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=LA1WOhQTX5ByQ9v6PfWc2mZW
	1spbBXtueAXo3bqSDbQ=; b=XI1od+kHQtwJiuPa/LY0dHthPp4qR/eoGoTaqKw4
	WV7e5ihx3zU1tau9huE/G5OE2N4tNJEMZ77lAAibREy4/Qmyw6k2H64sOJH1Ri7Z
	47OWt85AvO6qQMOlR6ytfYOE4ZElqCmoPNf2gnLUKBevX22uUulrvrvzC/6SuApw
	fQIiqwJJOpRlahR42Km1d9n9PbvzHAPlxwtv5+mQxGthcGyBKUDdL3oquRkyiw8z
	hf20O2xstFk+v8RH5P/bCuu+9OmShYaZLDwiTKe1ISFxhe78vrigS0inB3s2Fw3A
	msAyJi/TsrE98XWr8EhUAeamWYHDhU5K3ey+hSsEkuwnAA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45r1xnpvr6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 19:07:50 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c549ea7166so14925685a.2
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 12:07:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743620869; x=1744225669;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LA1WOhQTX5ByQ9v6PfWc2mZW1spbBXtueAXo3bqSDbQ=;
        b=c3Oj/bTd6QVnNVCTM9EnmZO2f95kos7dymwYUFElKE0uLRzUIK6DXj0HAG6/MVJyO4
         wbq4CbVt+LTyFmp7cYJRXynMFJU3t5/nGBoMlViMHN1CSHqoEBP7KDZSnBJ+d8YHmm4V
         j5LbA9x2Lalir/EiU16hRW9wkHIGeNJLmrV6hG6QJlbVTNZ9syII7HrGT/G+00E15gyh
         w2wEAKExGQkgqljQC5YyE/SMwpxuRdZqOhR0sByPDMeVUEByMYZ7asP/UAYZpI/L8YzT
         6J7xF1bmAF+bso/oxqNAlAHIOERxEw6KcJIhBl7t156GK+YJq3O5UpQwqE0iCmruHbmq
         2BDg==
X-Forwarded-Encrypted: i=1; AJvYcCX8y1dfRKA4A8r3k+gIzl+apTc7X3+LoBaOTq5mqzozHUtxN4Je654RKqGrnBRwh0w6y87aFZ7gTGFI@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8WwUpXaoskxvDAZ1hpLKNAYVX/gHent4Eh3qQksMlgSZZB8Ep
	41Uxz6YgAA9xS58qVegu7H1oh7JUEbn8wmHYkokq8pwtBw4/B1wvaw2byrou5QgX/KsAcHHFXyk
	t5DfZorlrYVx8baw6xqftUjMCrf6OOkKMzZESYUCV1ajAcL7KPkjtNqN+2OkG
X-Gm-Gg: ASbGnctWZ5SRQXsngR/tW1xIPnHJSEK+UScGCBQR4g+/eGRmkIVpmejiYHS7dcl6b6S
	Y5qB1ejq0tpBUSGXeEqdGOGEt4kP//CZ/yrx0HLL9gE3CsnaKPpML4Pv1Tcf+tWp7yVWv3hvMMZ
	jWwaZU4q0JxBssObdT8JSpNJil3TPakmNQ1SrGUuV7extOAdKPBc7y4xFEN/oKNEydOQDQWxG4a
	Twt89IWzcO7O5Vt6whFuRF6A53EKT9PDWFXt+Sf5H4NHnZ+YXQZBEPdCqJ/9sj9U7GbJUsV94LM
	RajcYqei8x4RKbVapzN96H1YU/4jK0IYmp5Y8LEIPQyYKvAY8stgJcHgrEIZ2/bE+ZP6L48xzxL
	tLFA=
X-Received: by 2002:a05:620a:1a0e:b0:7c5:94e0:cafb with SMTP id af79cd13be357-7c75bc8e3afmr1349613385a.48.1743620869338;
        Wed, 02 Apr 2025 12:07:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IErZZ608u4zqFw2htoAry3TzhWNQ1iLzSerIc8/NM1Iiada2nzhQbeC8aAg15XvOdwOqWacIQ==
X-Received: by 2002:a05:620a:1a0e:b0:7c5:94e0:cafb with SMTP id af79cd13be357-7c75bc8e3afmr1349608585a.48.1743620868984;
        Wed, 02 Apr 2025 12:07:48 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30dda97350fsm18626371fa.107.2025.04.02.12.07.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 12:07:48 -0700 (PDT)
Date: Wed, 2 Apr 2025 22:07:46 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Christopher Obbard <christopher.obbard@linaro.org>
Cc: Douglas Anderson <dianders@chromium.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Johan Hovold <johan@kernel.org>,
        Rui Miguel Silva <rui.silva@linaro.org>,
        Abel Vesa <abel.vesa@linaro.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 2/3] arm64: dts: qcom: x1e78100-t14s: add hpd gpio to
 dp controller
Message-ID: <6fxnxcrtihxcpmn3fy2bb3tz5xoeqhxdftvurarlwvto5vyofx@ff2sfftyz5cv>
References: <20250402-wip-obbardc-qcom-t14s-oled-panel-v5-0-ff33f4d0020f@linaro.org>
 <20250402-wip-obbardc-qcom-t14s-oled-panel-v5-2-ff33f4d0020f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250402-wip-obbardc-qcom-t14s-oled-panel-v5-2-ff33f4d0020f@linaro.org>
X-Proofpoint-GUID: haRdg7wxRLFRgspSaptG--Jg8_vw9vhJ
X-Proofpoint-ORIG-GUID: haRdg7wxRLFRgspSaptG--Jg8_vw9vhJ
X-Authority-Analysis: v=2.4 cv=Qv1e3Uyd c=1 sm=1 tr=0 ts=67ed8b06 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=mxXJVTWgdfz31GLmhacA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-02_09,2025-04-02_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 spamscore=0
 mlxscore=0 impostorscore=0 adultscore=0 priorityscore=1501 bulkscore=0
 phishscore=0 malwarescore=0 mlxlogscore=562 lowpriorityscore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504020122

On Wed, Apr 02, 2025 at 03:36:33PM +0100, Christopher Obbard wrote:
> The eDP controller has an HPD GPIO. Describe it in the device tree
> for the generic T14s model, as the HPD GPIO is used in both the
> OLED and LCD models which inherit this device tree.
> 
> Signed-off-by: Christopher Obbard <christopher.obbard@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry


Return-Path: <devicetree+bounces-221672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C572BA1BB1
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 00:03:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 113F93BFB31
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 22:03:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E610F31BCB9;
	Thu, 25 Sep 2025 22:03:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kTArokZv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D7F731353D
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 22:03:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758837816; cv=none; b=QvWasUM0IdU+hN7flKipwIkrQD9NWXJrgQjAtz56PMOn4x5xYedzH0vdqfteE+S5Q2ygMhAC7TMKBpvXgpsMbyBaYUbEPPNT6vWd9KQ8FcLopoAlzwpQhySwD3l4utCHAtl4Ov2hFYyUA8uPycBwtMy9pqe7CCHHd704iN1N7iE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758837816; c=relaxed/simple;
	bh=SimrJAsjo/U76oBFMh2wp+ZHY0z8eJuP215NvjC5L8A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=okAg29q54u5Z2Yn0wunW5Ryixc6fuyzW1TtieiFtrsheT1ucOZqE+jbzEBqqpCbrFz8D5QTSKSd+sNiyJRtqR2+tdlnoSL2aCY+v+qfKiDOw4joTFRylqa1cAinDYL/f3/yZq6ikHpq43b5aUjoachcGco36YHvRfFv3sD39l7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kTArokZv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PIPptA014864
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 22:03:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=kyKnwB1YFtbc3XyrNI6dEPy9
	Kx88yZomZncunczbfcQ=; b=kTArokZvPkyNBnSUBZNdORv/icUPiZZuXGXxnf+H
	+cf1y/O+bEQ7MfJL+EM7bI2KVC5tvKFLp98NMuW+ovWiwyf2vXV4cwHXyttrnnPA
	+zdRhNAlqrhb+uHCZpq6LJ7T23x0Gz0zj/3RONJP9LgRKR5CfSomzpohHjNB28Yy
	t91xz5SaYpIroEFvLcEkjU3JZzyazldEmmSMLItLhdNLELuicQKvNWhPwZP8BQqG
	bjdvoSBpt6CinR9ieuemi3IryPHLaheSfG2bB0Npwifm2ylGJgisTvN6NSQ+kwKj
	WUg+4kJcbgZFq8d6BGfJoSfAgwbEbB/UzmHwuNW5Ay4k6Q==
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com [209.85.210.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0t8hre-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 22:03:34 +0000 (GMT)
Received: by mail-ot1-f72.google.com with SMTP id 46e09a7af769-785bd8f1577so2173968a34.3
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 15:03:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758837813; x=1759442613;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kyKnwB1YFtbc3XyrNI6dEPy9Kx88yZomZncunczbfcQ=;
        b=vr3Zx0KZd69A3Tv/HPC1ee2gaC/Kts5Mkvyo0HkTDDrW2FEo0/P3ZSi6BNca3ODtnl
         5nvv9sjF39Wj4fr9Wyc6jea2V3EKXHVXHQjWyViNwgPrFRNlH6u/hXsDCEqzhgtjf5kW
         94Is4rcS/LRMyfrfCx6LGyv3dlM/UqK50Ws1AVP1h5LY8xPYH0HfFP++qZwXXj0YLKNo
         SPgZABUIV98LdCd1LUm+oqIfZZV1FjSoyGK2wf6hIfVm+ob+FkhU2Oeo7U4tKKrHyCt9
         +CVGvu+luHaEaJq3rSanENvyaHzcx+5lSWBirYpgjLnh8ez182T9oZoHqmy7OD0x68tL
         YLyw==
X-Forwarded-Encrypted: i=1; AJvYcCUfhqSl1dNSvcVi0Olu/oqMeVScLHFxCuo0Hjlntmpq3xH9HE32hgkUIdH4B+5Fq4nXUNKTqpvqZGXH@vger.kernel.org
X-Gm-Message-State: AOJu0YzWT2275grI6FBliRuffXk/j4hTsVE/vOjVKdA1iq1gV9cy+q/z
	maIsoacuFIlZ+kvnC0Rymp4yGC3c51AI1vcWrW8tK1+OJu0zka9ZSwxhBszEPCWtvzfQNBz7J1Y
	rWT/SsEydW5STFii3g5Jf2W0zm2XB5MvUCSY/xb42BHDx+elhTUiTs2PBeyJgLevZ
X-Gm-Gg: ASbGncu7t7Te1qdl95OjHr7feDz9Xy8f7JkBtoEOdowMq8ULG9AKSBNtMymCTogS3Yb
	u6LorLw+OatMYfEKEHTsEQlc75wUpMjZPqCGG5DsElz+MMk7LGmy7TB3UY2jhnPNX3rBJ8724nF
	dvVfqoLiFrnRjAZ3pmFxwpQiAMViekMbZ3oiTqSi9xGk/p9IqVPh1hyJAITwhuxl+LIgbpmK68M
	qwEjdA1i4XEVuKWSu7XNdhqeawd11c1paouQDIxLV3R2MEfbYAZZd+9rlbW2QA++w8oZ1l2Z726
	/I5qalsfMZ29IR4kbiZMJYmb3TWGPVssx1+VYSY6o872FGpjCY9vdZ8WxyPLKO9PhiSWBabmidg
	Dmbw6GZ2bI2G+t9kmeV3mILCKXKmvZaLfZ6ajZFHw/W9O+r3BDxOK
X-Received: by 2002:a05:6830:82d8:b0:745:5123:c53c with SMTP id 46e09a7af769-7a06016b533mr2209270a34.32.1758837813301;
        Thu, 25 Sep 2025 15:03:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEMVYQTpwJaNnmccgTZ5npi/eB9adT6V58QHAXjqd3PsqhBbecByebxJS7dc9agoabjKnHZVg==
X-Received: by 2002:a05:6830:82d8:b0:745:5123:c53c with SMTP id 46e09a7af769-7a06016b533mr2209227a34.32.1758837812878;
        Thu, 25 Sep 2025 15:03:32 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58313430be5sm1171344e87.28.2025.09.25.15.03.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 15:03:31 -0700 (PDT)
Date: Fri, 26 Sep 2025 01:03:29 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ayushi Makhija <quic_amakhija@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, robdclark@gmail.com, sean@poorly.run,
        marijn.suijten@somainline.org, andersson@kernel.org, robh@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org, konradybcio@kernel.org,
        conor+dt@kernel.org, andrzej.hajda@intel.com,
        neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, quic_rajeevny@quicinc.com,
        quic_vproddut@quicinc.com, quic_jesszhan@quicinc.com
Subject: Re: [PATCH 3/3] arm64: dts: qcom: qcs8300-ride: add anx7625 DSI to
 DP bridge node
Message-ID: <oim2rkt3xczehmgg3sszmgobrqs3ov4rxockseqgddzlts6paz@ztyakecujcsr>
References: <20250925053602.4105329-1-quic_amakhija@quicinc.com>
 <20250925053602.4105329-4-quic_amakhija@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925053602.4105329-4-quic_amakhija@quicinc.com>
X-Proofpoint-ORIG-GUID: up80OjWGQe9KIhBtI0xuPsiEb5o2hEN8
X-Proofpoint-GUID: up80OjWGQe9KIhBtI0xuPsiEb5o2hEN8
X-Authority-Analysis: v=2.4 cv=Jvz8bc4C c=1 sm=1 tr=0 ts=68d5bc36 cx=c_pps
 a=+3WqYijBVYhDct2f5Fivkw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=En4R4P6zDXfLUnqyaIQA:9
 a=CjuIK1q_8ugA:10 a=eYe2g0i6gJ5uXG_o6N4q:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfXyuMw/jZfjU+s
 un4OsTgYfB54c1FDdagpecibaWdwRIb6eh+J1UNkJywwj/UBg68syoRtHdIEhUJKyf0SidE8x9i
 LYpRK0ISA/8h1RhCAEtpF9YrSIb5ChV6FZJBolDeiBFekzwstsVgdrI9vVlwYyghjYUq6qwQlvS
 qV4AU69D7x3BhR0FwR3IPMbLAVDNLR8YFZPgEUyuZudKCQ0wxDJxaZsmOuisu3LvjTshHNB5SGD
 zPGo4Ij9EGvNRsgnaGZGXQouN1oDM8dhScho07rBHIK40KXCEaHFg8z+6mVYb5b7LjuDCyOoW1R
 P3DKyxYJgUDHzsBmsJyCETeG5SJnoHg6H/PxNpiXSfpb2JL0/1mM64S1UO3xhUgfqDha6b6RsVY
 /JjK4Q9f4hzZlFslQ8/XbG/xDMpEGw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_02,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 suspectscore=0 spamscore=0 priorityscore=1501 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

On Thu, Sep 25, 2025 at 11:06:02AM +0530, Ayushi Makhija wrote:
> Add anx7625 DSI to DP bridge device node.
> 
> Signed-off-by: Ayushi Makhija <quic_amakhija@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 170 ++++++++++++++++++++++
>  1 file changed, 170 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


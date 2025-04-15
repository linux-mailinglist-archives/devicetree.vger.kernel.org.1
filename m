Return-Path: <devicetree+bounces-167209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A347A89A7E
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 12:41:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 329C57A25EA
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 10:40:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2168328A1CE;
	Tue, 15 Apr 2025 10:41:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="J4/FSqK7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9203279912
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:41:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744713687; cv=none; b=SSgtxC/cBpaZZ4ubfz6a3PID+wpKj21t/yyd/B8gxjOOYhc9yq+UmWcahe2pt81sILcf+WOYxpR47eRJRaC9O6WvBfaSy9nwwPJJdo9rkvHRjbR82lofiIE9vMWDazwHJIOpRIsMZfsRNZ1jrK5tCa2sNBNZtBgPh/YGWmbs1KQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744713687; c=relaxed/simple;
	bh=PqtFIuf2PaqgdiInwLbpBw6+hS8F+gVD8HwKtn8pZqA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CKMQRcQOzp8Rf/N0vZqysm8eA/IherNqHNEMlZoW2ZIgWFxoDUD/gBBPVEA4CLIjLSZ7UKjnT2JMsf4hwx87egAE4oSPHgKfkHVbL4GySVy64WqMV3ywP1pj69CwCPROFjH+0L6Evk2so88l3UNmwWMsybvXqbUG5jgDIgD9yfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=J4/FSqK7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F8tG2g005836
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:41:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	i+0K8i6mH8nJR7NC8EwJps6/hl4dOeR4gugtJgCdwYo=; b=J4/FSqK7Q66nyXT+
	XyPwrbjGtFsAhLXsGJif+dz6X3ZRxiR01DhmA5hOLFvLS78sd8U5wuDPqNh/AKLI
	xWkwPJk8yHVJItxY/WNEI0ymV/vtlWUBILVSh24JF+hnHf1tTqRJQaGiMlAus2Of
	xMmUMm36PpBH+MbCeZAMsOdhrBBa97LfmRzrPCDw713cABnTWCwf5IecUM0ra451
	Syx+s6M/xepgmUNq9XK4dH1/CnyxaNfZZ7ht0xlYk1OLfn0XY3NfJDi2EcuF81SJ
	+h0K8QRdX5YksHOER0I6CSI+LmZVcBji0PieKDwLxfP5UfMF3zo1ItTphGmqnZz/
	n8Eoag==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ydvj7wdu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:41:25 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6eeb8a269a7so16726276d6.0
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 03:41:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744713684; x=1745318484;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i+0K8i6mH8nJR7NC8EwJps6/hl4dOeR4gugtJgCdwYo=;
        b=PRT0wIBTKHPn+PGGq2/XYMZSO9ALHPFDUIlXoUPBFdTvBcUWYFOxJlaFyXcBKKfhOg
         qzlMbOV8i12MFn4JzLhU1/5Th2kJ8eJ72eyubbK3SMalk42P6QzYteStFu5WCNf1c1y8
         K7xsPwOgUpLdDnSADZ5u8E1sZG44GEjMmycnl/KFdp9vZ13c/PatmG2l28KksoEHGF9y
         IP4l9eN0pz3mkm4nJxVrFkzZBV3J4cIQhCACwHrx0XqO7gdSJpaCv3DlotISe/+ONXzS
         jvqJ1Avt/wP29cwy8mmrS4udjQIOQISATj7RbzkSEYKhmGAO0dhMnAVw10IM92trQVq0
         rnZQ==
X-Forwarded-Encrypted: i=1; AJvYcCUabaBWydcLpcsEtb1jRga0NGf4bD+mstrE2WFazR42Dz4Eb5c4+I91sVTZ/ENmHKBc7wsE0f7tL47W@vger.kernel.org
X-Gm-Message-State: AOJu0Yxf+Xd3jxgmuV503euQmZcgV9k3Z1JX+ncLfrHx5ErlfxMIWE4x
	eJnpyPfWJ7RvyHQmflI8UKXNkZZ5GkRDU23Zy41LgTCxHNJjx5ovfIg1eZKi6fxiX49p8VuEkIi
	d6+D2nT3jYQTmIjajTTaggKtI7grLRkoTdzJ5syM0jXeadYt50IYiaE/NNLm5
X-Gm-Gg: ASbGncv9YpqjEZgpsxc9btoFYwRC0FEh8tObWeX6t6H+f1qbB3I5PQ55kyYFBdEMd0w
	HSUTzDOBPGTrLwdIH2X3W0J0tq7rf6+LkZIXTIDCYHnOZgjMyzOdo6TBI9zkAV4oBKXuMYw6HrX
	kM1bTEpjaD5YO27JQtrtRhqT738hrxsVYWlY57nYbKXXNK+f0/Oc01K8FxpjXUmoH7M4ND3q5qt
	qQySyRmrCvRNJD+XQrQnqi45T/oPDqsWTH2YSEgQMoblTllLQXApJDQZ9mq0BbSByCqkG/BGaG9
	8vnTNySkAqBdMuB/GiZaxMRmboRESX/IKcSMkcYXl23XC5PvrX98Q4ryQjCezaOVHPk=
X-Received: by 2002:a05:6214:e4a:b0:6ed:2289:6623 with SMTP id 6a1803df08f44-6f23f191ce8mr95478036d6.10.1744713683834;
        Tue, 15 Apr 2025 03:41:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG1tPAainIF3cRDQQRrIeVRg/M/xThr3zwMMsYVBqA+QZn27ts9nKnwLdK6uEovJGnWc4aQow==
X-Received: by 2002:a05:6214:e4a:b0:6ed:2289:6623 with SMTP id 6a1803df08f44-6f23f191ce8mr95477936d6.10.1744713683552;
        Tue, 15 Apr 2025 03:41:23 -0700 (PDT)
Received: from [192.168.65.246] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30f465f84e5sm20180971fa.105.2025.04.15.03.41.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 03:41:23 -0700 (PDT)
Message-ID: <78f4e00f-8842-4821-a012-c6ac59320dd0@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 12:41:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/20] arm64: dts: qcom: sa8775p: use correct size for
 VBIF regions
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250415-drm-msm-dts-fixes-v1-0-90cd91bdd138@oss.qualcomm.com>
 <20250415-drm-msm-dts-fixes-v1-5-90cd91bdd138@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250415-drm-msm-dts-fixes-v1-5-90cd91bdd138@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ZIrXmW7b c=1 sm=1 tr=0 ts=67fe37d5 cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=da4WsfccAxvekxWPt1gA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: QX14ZfukonQPZUx2XaG5aF6Tdi6al_yW
X-Proofpoint-ORIG-GUID: QX14ZfukonQPZUx2XaG5aF6Tdi6al_yW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_05,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 suspectscore=0
 clxscore=1015 priorityscore=1501 bulkscore=0 phishscore=0 mlxlogscore=607
 spamscore=0 impostorscore=0 malwarescore=0 mlxscore=0 lowpriorityscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150075

On 4/15/25 12:26 PM, Dmitry Baryshkov wrote:
> Use allocated region size for VBIF regions as defined by the docs
> (0x3000) instead of just using the last register address.
> 
> Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


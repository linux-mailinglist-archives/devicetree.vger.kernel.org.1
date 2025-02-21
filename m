Return-Path: <devicetree+bounces-149623-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8CECA3FF4B
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 20:04:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4AF4F8602DC
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 19:03:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FCCC253332;
	Fri, 21 Feb 2025 19:03:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JNp1EfYn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8810525290F
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 19:03:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740164626; cv=none; b=qxy2SSERA80gU/s030FxUyMrAwOjkkywXQP0pm+UCIXjFhkAiNyAMTzSsUfNSmn+LMOcXDC6zxkpiGptZRPGhk/wmibeaUsP/jMLZT+0aHRU+uQJIS9sGdxhEO6pzZDkCcwtMHIGhQQvQLnayjd31M6gEor/CV8zE0+lQk+VW9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740164626; c=relaxed/simple;
	bh=ZoquaOJL58rkyZ4HQ2+CWELBjcoQjnrBmjHpzGMV9pA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LbWOhgaqdJvq7iF7asLrN1TyV3EEGREpSu60EzWqIDYtEtOUh19oHcW0pOVztp3fS41lCOZyotCXNsziXwSIrRXRsNKkWf74fZ2Xp5g3slbqpLMpXN5y0nZt00x9M9qAxjStx8de/m5wk8nrNuJvaZhn3mr+HkKezggbXjvz5TE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JNp1EfYn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51LEF9XS020394
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 19:03:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FtsS277jSN5Xe+S8TQapqC+r92RGb2FMagR7cCynoQU=; b=JNp1EfYnE7CuW49r
	ZcVsQ4paI5EtCNr1Tf2IlRWArWu8pdH2ikHd4BnDqsspfwby8tuTAaz/b0C6LXJ2
	CBkpHRn0tQHvG6d2SmcjJvspgf6kTKTuYm01eqI/YtYtHqbWMOcRN4Z6WAr1wyaw
	yiN8+6hNEn/JKctihb7JLLBsERPNxth3yAmICDoD4CgLtxw2JpL/OE6KmXZCp/Ob
	0i3E2BoDc+0/h6A/WDpkOtn8dJwiKaTaKkZdscNjkgWcs+PnVsZY1xJd8XwFLnRL
	AdOv7TByKwf7QZOC7cXxPXYZSeTcOjCRlgVnYI6ZaIojI3aHhCIEl3n3KP6q4xuQ
	h+GkXg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44x06t5nfn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 19:03:42 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-471ef402246so5464951cf.1
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 11:03:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740164621; x=1740769421;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FtsS277jSN5Xe+S8TQapqC+r92RGb2FMagR7cCynoQU=;
        b=ZIP1YKdtZxSD7eyp4kGHBsZLciE0K3roxVsK+9prrTBXryV6pW7LBPY4iiqbb6reEx
         9cMMZqTfqltG/ggaw1yByj4Cx5Phf+fpF7wLNibBwxiJV3uM1okoSV0mThl/AlLb+vSv
         y+WOlf+p6VWyLNFqeFDr3BXdZTwZvxIS42u1kGcZ2KQyGEW5pvzfBW6HAMIqO776cBzM
         sC4eA5emJ3VOaKijYhwXGxXW+aCbvbRmOAbLxR4KIRp2ZxMYM2GA4mmgHpT2umBOGXP0
         InjSXS6eFNfffoyFHVNGe8P73rfoQHAHSwQwsskeZ1whHNL8mxMlNVBt0rq+6E4mrJXS
         JV3w==
X-Forwarded-Encrypted: i=1; AJvYcCVLpq+LjInFrI++6brisH5sg7eRi0N0Cnr1mMqz7CTO1nCIS2wsfKn2HyGl90ljtt7RK4ePH1Zw2Uns@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4IoFXAE94KPyNvPckvsbUlM1r2XynQ2BsEr1kXTs72jLjz+NU
	K1ZQPO53xM/JlCjn+hjwgLD0Dzz1hCye++DdM66WtBgg887XG2a90TwvnI5JS+Ku6an6TFopnj7
	u0g88xdQwp5lYmQ8KOinNifPGmh5R1KhXQPDEXSIgHaRv9id2qPjg6cZdNlRt
X-Gm-Gg: ASbGncut/J3sgUSQjTx/xBtmjnL7o8GVYNay/JSBgfGjIg7ylkrLbjJ5KUf2Dz66hMC
	zi8oVgTKDKBeGiEEAkhM4oT6ps5DTBbsFB3kKn4ZgdMC04nHUArgasRDG59fTed6BPiKwDJE0AA
	cSNMxAB0leVJs4LzGm2Uu5Bk56CqawuUYpLtDHmZlNwQhJampF9IM54kkrD08ExPP2fQpzTHCR9
	QQGuBi8C2+z4Tou3guAYr2z6gGI6x/+lOe04pTM3EqGA0VXqPvKwf7CY3TSJcyGDImDmgUmzuZ6
	K8SKD8G9KTe28wRdCOMDSSd3XSvMxAjPOWBPU1zPqDASW20soVy4bsgTvCrFz131cs6Kog==
X-Received: by 2002:a05:622a:51:b0:472:1ee7:d2d with SMTP id d75a77b69052e-4722289edb0mr21824211cf.1.1740164621140;
        Fri, 21 Feb 2025 11:03:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG/6ymxU8A/gN+SyZMPp6G+fjlP1FlKJqbI1zhyWG44Ii9xmTBAzfbyN4yqHmBTcykIfB+qVw==
X-Received: by 2002:a05:622a:51:b0:472:1ee7:d2d with SMTP id d75a77b69052e-4722289edb0mr21823991cf.1.1740164620638;
        Fri, 21 Feb 2025 11:03:40 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dece1b4f70sm14049847a12.12.2025.02.21.11.03.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Feb 2025 11:03:39 -0800 (PST)
Message-ID: <c03dfc68-9463-4d44-81e5-e5727b34f0c7@oss.qualcomm.com>
Date: Fri, 21 Feb 2025 20:03:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v5 4/4] arm64: dts: qcom: x1e80100-t14s: Enable
 external DisplayPort support
To: Abel Vesa <abel.vesa@linaro.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
        Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250220-x1e80100-dts-crd-t14s-enable-typec-retimers-v5-0-380a3e0e7edc@linaro.org>
 <20250220-x1e80100-dts-crd-t14s-enable-typec-retimers-v5-4-380a3e0e7edc@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250220-x1e80100-dts-crd-t14s-enable-typec-retimers-v5-4-380a3e0e7edc@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: AdV1s2rke7-5tWtTT4YwXzTIaga-qZsq
X-Proofpoint-GUID: AdV1s2rke7-5tWtTT4YwXzTIaga-qZsq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-21_07,2025-02-20_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 adultscore=0
 clxscore=1015 spamscore=0 malwarescore=0 priorityscore=1501 bulkscore=0
 impostorscore=0 mlxlogscore=680 phishscore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502210131

On 20.02.2025 6:42 PM, Abel Vesa wrote:
> The Lenovo ThinkPad T14s Gen6 provides external DisplayPort on all
> 2 USB Type-C ports. Each one of this ports is connected to a dedicated
> DisplayPort controller.
> 
> Due to support missing in the USB/DisplayPort combo PHY driver,
> the external DisplayPort is limited to 2 lanes.
> 
> So enable the first and second DisplayPort controllers and limit their
> data lanes number to 2.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


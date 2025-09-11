Return-Path: <devicetree+bounces-215883-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 88830B52F02
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 12:57:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 23AAD7A1780
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 10:55:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 334E130FC3D;
	Thu, 11 Sep 2025 10:57:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bkGXXzC7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFCCC1A5B8D
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 10:57:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757588252; cv=none; b=gJqMch8R9uGYgrkohggO3CMyfPCr8YbeVzlt8nG3WVbtqJFV8rG7499PdbpWCcC8QulKX4ZyFPxBlhATGuIOIocPKix9Ha6Rw4Wf5XNlKuMFfql8/yahEJ2/xyWi5PcldLwWxDkKJLlVAj88iWovxx14jiUbUL6nZfj8wLDXvGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757588252; c=relaxed/simple;
	bh=w20I3Or4zRoNyF774X/Fgv8TN+IVZ+rO/jEo5fzcVzU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=m4uS/nXuGx7u9RDe4cmT0ektF0R/3W5z0pkTZ1ivuz/jka2/mjZfswNlqPd9cvf4S17xNCJkUWTGJnNILhnB0daYiriKzcx+aEqX5fZfZ5hYlrqkzkY2Dn1Y2Awz4LKudAWIhEDh2Av1RIEl7thnSDF8dnYFn0RXG8JZQj8v1YU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bkGXXzC7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58B2In7H015872
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 10:57:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	w20I3Or4zRoNyF774X/Fgv8TN+IVZ+rO/jEo5fzcVzU=; b=bkGXXzC7osxLiUED
	rB7nmC2VILhkx5rMILzT06IFeDLGM8styZehSnsAEhQ0urhJRLxKP2a+dEyYfdKc
	oVrVKpQgGD+GI7ckTMLUlDNCnN33bjnuL50qmHkFyohR0gnJabd1q+3dvePDaSGS
	CslxrWLJWb/yYwtyhmmyxW23RCTvlADxoikmfvTMrLxt++ZdmKGiR6dlBhGsO3Io
	i1OYxuo45I6A3hAWOwuZ3BeaNi2E2FIblLnaGo2SctKE557YQiAIQG0nAW6+jiJi
	NPFlnPisTYU1Sej6jGNq5wmGpCubSS+8Pw/LBDVg00ZXIMmBBHgaiztikwG2fhkR
	hpAt+A==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e4m76k5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 10:57:29 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-24e04a4f706so7105875ad.2
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 03:57:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757588249; x=1758193049;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w20I3Or4zRoNyF774X/Fgv8TN+IVZ+rO/jEo5fzcVzU=;
        b=n+GzN8e3m+g7oUdyDLZGn5ElZjhZ+ubQlqJ3Yy4W/K7OK09n/7zHEYAe1RjHkbB7PV
         MRDiLBV3CHm7uNIvORzW85sBSv2xn/Ly9ggTVSH+ciT9U1hp+rpKGwtktBALncdRoxtg
         0OChD0U88xqi9/wSE01LIBbjHzVLxV/JH/X4KakEl9bOPdXNs2arqtSr8tHus76ruvbR
         frlhmpt8jj9z3Mqb9yfxcqKYulmXIwk9gnEAheNMtueJJAM/PJOC442vScbhMQw9mkPQ
         uuohtmmBUg4kgZtljZuxX4TpeFCSaXY4jJ5DhMvwu2+h8M7FyNvBlCbGHHQPsJz+VxHa
         DI8g==
X-Forwarded-Encrypted: i=1; AJvYcCXz39An+Vqo1D/ATEv8qM2la4pnm7cswjTvOwBdWkyb+Wzg9xD4HvYrSyyxCFZAdgbkmXijuX8z4rQR@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2SWUJNlTLspIJWZ9ngW3rUBNDOw8SJwaznOf3zawOUHPqgXjp
	32KR9UbyM0GdC44ycu3Ap4Nf0TtZt/ZEdXVc2Koo8lbxxufKbFP7EgQhtD+rWy4vUVH05y4nQOu
	KWteuAo5bqdNSOQeUiuls8x0UK0/ST/Z/y9FO25yAI/zndjmai8oiG0gJ8k+xtaZqWBUAgvhrnT
	E51hoT0sGLhnhsx6uB9TNiJNjE1tlzeMovEAKu2HA=
X-Gm-Gg: ASbGncsOLwkozd8XqNrWrCjHTpRtTdKV38c3ovcmSGIprCXCetkMPYvIjkYqrEmhvoL
	AW9Euvho8lMi/rma5XTZbQEus2O8kNHUZW+Tb+tqjP6snyWleIqkMc/4qj4eRsUYGAckN2BwjwV
	q2p6l1VDud0Bg1mqVnHFn4KbhrZRifusMCSqk=
X-Received: by 2002:a17:902:f606:b0:25c:8005:3efb with SMTP id d9443c01a7336-25c800540b9mr9214895ad.54.1757588248918;
        Thu, 11 Sep 2025 03:57:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEAH11JD2Q0IWOglR3V4QiPu9OVEC1C5tZSFPqr+NcxPJGuPbUCJ+dsuSyVMVCW06uEy6k6eSWe+gjk2lD+b2U=
X-Received: by 2002:a17:902:f606:b0:25c:8005:3efb with SMTP id
 d9443c01a7336-25c800540b9mr9214575ad.54.1757588248467; Thu, 11 Sep 2025
 03:57:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250909114241.840842-1-quic_vikramsa@quicinc.com>
 <20250909114241.840842-4-quic_vikramsa@quicinc.com> <w54mpkzk7irjb7m5jiouxhj77czj4ex72oqioaph4o5qhcsay2@qjolctktsu4s>
 <8104bb41-e827-4daa-bc96-9b6678a9d345@quicinc.com>
In-Reply-To: <8104bb41-e827-4daa-bc96-9b6678a9d345@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 11 Sep 2025 13:57:17 +0300
X-Gm-Features: AS18NWDL5Sq7WXLmyGnLpCSE5BXnWmdKo1qJbjlndUcI-PeO2ah0x-l-T_QEjBQ
Message-ID: <CAO9ioeWLrYAFG2cN6w0uOqQE7K83EAyN7om6+QEPUWRZoZ3-Nw@mail.gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: qcom: monaco-evk-camera: Add DT overlay
To: Vikram Sharma <quic_vikramsa@quicinc.com>
Cc: bryan.odonoghue@linaro.org, mchehab@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, hverkuil-cisco@xs4all.nl,
        cros-qcom-dts-watchers@chromium.org, catalin.marinas@arm.com,
        will@kernel.org, linux-arm-kernel@lists.infradead.org,
        quic_svankada@quicinc.com, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Ravi Shankar <quic_rshankar@quicinc.com>,
        Vishal Verma <quic_vishverm@quicinc.com>, quic_nihalkum@quicinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOCBTYWx0ZWRfX3IntPxIt2llE
 BtS+co5xIEmloVvzlmaU5Afc0+58vvoB1sRMWA/addj0DJrqLMq62XzyM4cy5ZRvONcy82drHBn
 zFkKrYgL9+EwEJBY6z13rsp5ds0PjBiIolCZMRzKYI+ANmnjenCwW6bzZffUQ8UuhiRAa4ZF1e9
 kAHyhHUiTZkQCguvcg0UKlnoa5QqfYX0w21ahWpIaERoXTnyfj2p1EQCq3JJFbIsJ4MI8lGFM+B
 8fU9pnACSjmP2oPLs4fV2CDRYVJ8Jwbs+mRn1LxbVwalpecyeYqmEBlEsdSo+JtdG+3vzkugjOh
 /boEIMka4wXnYmo/I3M1TB2V4bVsBk5u8zw1U7Oi+jJbNYlXJlVbRmiN0U4QOtzDLBXbw1WuNLW
 pXaxLBZC
X-Authority-Analysis: v=2.4 cv=J66q7BnS c=1 sm=1 tr=0 ts=68c2ab19 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10
 a=COk6AnOGAAAA:8 a=OL7WMRyR3eFSKxD7jRQA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: c8_iyYztuClGIuZUlspGbUQIsU-kWrKS
X-Proofpoint-ORIG-GUID: c8_iyYztuClGIuZUlspGbUQIsU-kWrKS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_04,2025-09-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 clxscore=1015 spamscore=0 phishscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060038

On Wed, 10 Sept 2025 at 10:03, Vikram Sharma <quic_vikramsa@quicinc.com> wr=
ote:
>
> On 9/9/2025 7:31 PM, Dmitry Baryshkov wrote:
>
> On Tue, Sep 09, 2025 at 05:12:40PM +0530, Vikram Sharma wrote:
>
> From: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
>
> Enable IMX577 sensor using the CCI1 interface on Monaco EVK.
> Camera reset is controlled through an I2C expander,
> and power supply is managed via tlmm GPIO74.
>
> Why is done as an overlay? Is it a seprate mezzanine?
>
> It=E2=80=99s not a separate mezzanine; monaco-evk does not come with an a=
ttached camera sensor by default.
> The overlay simply reflects an optional camera sensor attachment (e.g., I=
MX577 on CSIPHY1)
> That is why camera sensor is configured in monaco-evk-camera.dtso instead=
 of modifying the base monaco-evk.dts.
> Please suggest and alternative approach if you feel this is not correct

Okay, I found this email. Please fix your email client settings and
never send HTML emails to kernel-related mailing lists.

--=20
With best wishes
Dmitry


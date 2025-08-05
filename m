Return-Path: <devicetree+bounces-201875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D52BB1B193
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 11:59:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 181953BBB9E
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 09:59:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15E2E269CE6;
	Tue,  5 Aug 2025 09:59:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="a/cKFDsv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FA1820F067
	for <devicetree@vger.kernel.org>; Tue,  5 Aug 2025 09:59:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754387955; cv=none; b=XNzlXRHzB/AvsyQCtVwlMCfjB0mlMjwYvYcGnvD3x0LkUOTJrAsTLL00/2/u1SUF4SW6OjK0MVE9UcRk702gD7GheqJIuXjKA1KqPWoNRRXg7i6Kh4SmyBjizZJOCmQa7uABoMsjMtHX4Yt79JUykwpvIIP0Oqe9O/OmBmVXVIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754387955; c=relaxed/simple;
	bh=6xnkcRjjaBCV9mGFQ39UJqLkd2ZbEMv3DHt3bw7xXVQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PFagfyOkLbcIviLo2E3aQFj3kf51sluV61WmSDIBd/aq7a4Xj9YUhBKKUpN/x0DLwfs8IGuZZ7RMDm1qP+ik5oIwHRAPAjfj2E+XokXqkuyI+DEn+fvINh0QatRGafWfjKxwZTQTKmcOVwos88hFVm7A/DPnt0VzqeR2tEU8i+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=a/cKFDsv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5757siID003249
	for <devicetree@vger.kernel.org>; Tue, 5 Aug 2025 09:59:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oFkvM2HVsX9Y21JHEp/hCHiYryvffbqt4OmpC31gI6M=; b=a/cKFDsvjeknMpcV
	QDZ0r6yQBaPCNk7jNDdJ/aX+Ognr4LHk5faaMtRFv4C55saHwbzUGEp1Qph4yRkZ
	VwYJEEeeGhhxq+71m+g44x3hGmCrQr8tZZ7PjtN6YbQgq8gqKmgby/xaNM92ijom
	n6Nd+Eqp2AsqRvoaAQfOgDssOnNgQdcciVpVeFhyYeZ0OalpesYBLEyyb45qysGT
	Lu0WoFIbOzjhdFpOPH3DfrO2fG5HvOU1SHFb4wOfxO9Tvp9B+58q1znp8ZWZkzGy
	dElqQHtrPat2JrBWdD6epOg/jj7Ku9B+eHHi241DdozGQmn6TtNVWOIM08Nv6pBq
	nHVj1A==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48b3j3sxuu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 09:59:12 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6fb5f71b363so85042296d6.2
        for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 02:59:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754387951; x=1754992751;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oFkvM2HVsX9Y21JHEp/hCHiYryvffbqt4OmpC31gI6M=;
        b=A87RNPpuzWHDvI9biX7OAFXLVbbmlvP1OwLRFaFNVeQIv9l17joqKQWcYvaOQjpT6A
         eH+UAP+uIBYSWYe3MC/m99voblFDpTk2tVmXxZvbeGs2GwYeSwaXgR8HyeUo03VEDcJK
         uan0M+uPF9jeH1Q0eHMj0+mblPIyB+IEqKn0ZGEsIAjWbL6e6K29+deTzuivVM4vm90H
         smgiVaXnw4P0D4ygpk0kjut5ftHovUJUYla4DkdLMCBvHLJkiljo08nNJEJ9OVVikWr8
         5klDlFOnKxXa0RZgRpcGTCaJu3L0WsF57xI5BB1V00tdTo9ozbcfqxh4AvXxUARSIs6x
         SwAA==
X-Forwarded-Encrypted: i=1; AJvYcCUDxiQE/FJPr5zvWG0BlMUpBMa4e4UdAhlfbf6c3xLHNOgICW9ZuK3wwiQdmK6LMNGV5NFsJ6ATRsYE@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7rH5exS7hDQGtCyVcXlTgE3LfXO0fHrxlzB2s4ZVzA3QFg5/M
	5Fn0ovk7s793rFZGRZ2ToftGRtR3CBbUB+oTBQiWO/QXO3dcGGDv8mKeGJvLDBFcDshF+V6xYd7
	kT0G+tfnhXebeqPz0P0frT9B0XEux0O1s05lcXcBq2ugksVtDv8heZLdto8x1fufz
X-Gm-Gg: ASbGncsfjCs4UbAeJPz1AuqrmgjLP+p3L0Q7PxrU10X1moC0XoGH+o04OvZLw0OcnzY
	o26K84Pe6r/w4dSexJWy+1tkeGXY3/KkZNuKdaibH3uu6u0MqmUbTc1tAhQu9Nn+1EUASis9hEK
	Ks/Eik9zZOGgMUA+V+fbf5W/jjDjmz6JjVJvx4tZJCo62Ekr5EavMeDh56mEKHJ23koS59fDVWf
	ctHCV+0lnHm7Zn7gWiHH3Ftqjm7dgKTjYxCzrBPkVoUVWS4+hQ+AeEr25oIJr0EtDmhYkzMSguq
	vu8zk2q0Oi3ZaDF31AjDJ28tepIEE1n0l66zwPlEzEv8p9HfPupFYsNE6rP48XzfjGKZg0Yfo/x
	XiCwVAx3Blgys2cM36SRVN5Stu6MsC5JWj1f2l4lfDChIG109tQ3h
X-Received: by 2002:a05:6214:411:b0:706:de4c:fddf with SMTP id 6a1803df08f44-70935eeed18mr164933416d6.9.1754387951285;
        Tue, 05 Aug 2025 02:59:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGERL535Nj+LI6rztA9IAgnP+naoieBDZmsnatDeRA4g6lNmzXFHANW7lm0JicsfOzA4t0Pqg==
X-Received: by 2002:a05:6214:411:b0:706:de4c:fddf with SMTP id 6a1803df08f44-70935eeed18mr164933146d6.9.1754387950742;
        Tue, 05 Aug 2025 02:59:10 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-33238272ff7sm19726081fa.7.2025.08.05.02.59.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Aug 2025 02:59:09 -0700 (PDT)
Date: Tue, 5 Aug 2025 12:59:07 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Sarthak Garg <quic_sartgarg@quicinc.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Adrian Hunter <adrian.hunter@intel.com>, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, quic_cang@quicinc.com,
        quic_nguyenb@quicinc.com, quic_rampraka@quicinc.com,
        quic_pragalla@quicinc.com, quic_sayalil@quicinc.com,
        quic_nitirawa@quicinc.com, quic_bhaskarv@quicinc.com,
        kernel@oss.qualcomm.com
Subject: Re: [PATCH V4 4/4] arm64: dts: qcom: sm8550: Remove SDR104/SDR50
 broken capabilities
Message-ID: <lkjp2353athoi76h3j3bgkcxdwfn6akcyyweipt4g774ztmmer@vcw7ru5red3n>
References: <20250801084518.2259767-1-quic_sartgarg@quicinc.com>
 <20250801084518.2259767-5-quic_sartgarg@quicinc.com>
 <69f2807c-9a28-4b31-97cc-2756f0ab9fd4@kernel.org>
 <c7e36755-9255-4209-9d53-20077bd1d3ba@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c7e36755-9255-4209-9d53-20077bd1d3ba@quicinc.com>
X-Proofpoint-GUID: 4NzaGR5F4c23eVgzbk43ZclButo5E9Jo
X-Authority-Analysis: v=2.4 cv=TZ+WtQQh c=1 sm=1 tr=0 ts=6891d5f0 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=kKDBy8IbGvpil11uj3cA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA1MDA3MCBTYWx0ZWRfX/6EGKPaXkTUR
 H//90g8YzIqxM1TTZyMnzAjexBEC+3hSPSBnElY4FP75/iVHXaVKvgH00V/o6ZAbPn9fQ2XXPWB
 g8GHQEqCVjy5gkV+g1UxK7tKV6qzVyE1g16WbGLVaQv0Ne36wjkqJ1LuxsyqXyOjn0rgBc57wEM
 C3IVZ+pWYBDC86rEdqB00Jzjn1JEfPJtPZGj+gTe4DrMO/df0XL+bRbdiDfd2SbQXeNGoaFiJiS
 u8fLBjgb7XcFWYj7008lbXnwT//uorZOKwnPwkDXnCMYTmyVlg0Ad4AzVNWxp/zt1a+5vj+dStl
 iYr9TkMXMtZtt+syG3MbUM9wLpzDx9mG9mJfRo7qku4wCxf23V7+1DsvmM0UMX3+RpQglfpIEB6
 tk5QAMlevFdSZNPbVMDq7r5VG6wOsdiCHjTMi82fM6ImZE8QdMALAEhCoXLQ13Re5GOPioP/
X-Proofpoint-ORIG-GUID: 4NzaGR5F4c23eVgzbk43ZclButo5E9Jo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-05_02,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 mlxscore=0 suspectscore=0 impostorscore=0
 spamscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0 mlxlogscore=968
 phishscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508050070

On Tue, Aug 05, 2025 at 02:49:29PM +0530, Sarthak Garg wrote:
> 
> 
> On 8/1/2025 2:32 PM, Krzysztof Kozlowski wrote:
> > On 01/08/2025 10:45, Sarthak Garg wrote:
> > > The kernel now handles level shifter limitations affecting SD card
> > > modes, making it unnecessary to explicitly disable SDR104 and SDR50
> > > capabilities in the device tree.
> > > 
> > > However, due to board-specific hardware constraints particularly related
> > > to level shifter in this case the maximum frequency for SD High-Speed
> > > (HS) mode must be limited to 37.5 MHz to ensure reliable operation of SD
> > > card in HS mode. This is achieved using the max-sd-hs-frequency property
> > > in the board DTS.
> > > 
> > > Signed-off-by: Sarthak Garg <quic_sartgarg@quicinc.com>
> > > ---
> > >   arch/arm64/boot/dts/qcom/sm8550-hdk.dts                     | 1 +
> > >   arch/arm64/boot/dts/qcom/sm8550-mtp.dts                     | 1 +
> > >   arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts | 1 +
> > >   arch/arm64/boot/dts/qcom/sm8550.dtsi                        | 3 ---

You missed several devices which use SM8550. Please fix that.

> > >   4 files changed, 3 insertions(+), 3 deletions(-)
> > > 
> > 
> > This will break MMC for all of the users and nothing in commit msg or
> > cover letter explains that or mentions merging strategy.
> > 
> > Exactly this case is covered by your internal guideline, no? Please read it.
> > 
> > Best regards,
> > Krzysztof
> 
> Just to make sure I’m addressing the right concern — are you primarily
> worried about the introduction of the max-sd-hs-frequency property in the
> board DTS files, or about the removal of the sdhci-caps-mask
> from the common sm8550.dtsi?

This patch requires all previous patches to work, so it can not be
applied in parallel. It should be applied after the previous patches are
merged by MMC maintainers and then available in the Bjorn's tree. This
requires either skipping a release for this patch or using an immutable
tag for the MMC patches. All these deteails should be explained in the
cover letter.

-- 
With best wishes
Dmitry


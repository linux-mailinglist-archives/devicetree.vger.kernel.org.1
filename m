Return-Path: <devicetree+bounces-179322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D773ABF9D8
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 17:46:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 25B231887C59
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 15:42:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 712EF221F0D;
	Wed, 21 May 2025 15:35:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d7G9z/bS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC850221F10
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 15:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747841756; cv=none; b=DF6rzGeW9v377MfyKFeyFcK9mjIXkjkB88hMreHvGjyLc6CA2N+QaG77h8A3rApiQjwmmbBbnRmqZZkc+R7Y8imTgAnCFQFd3FGva5cfFSRDxuwYkMzXjBLT3QMVgrNyPJtUDi5SEWbaLEh/JBL1V25pFOtvUMV/xtX+W777w/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747841756; c=relaxed/simple;
	bh=Ji/NJC0jS20Z218vWjgerhtA9zNemwT1VchT19GibRU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c0oOWr+AgyW42Z0++Pju4HrwedCfYjBqVeS1Da33suJYATQK4nLoPLF14SfEmrIzITVjdrfp18TGxoXaLCUzi2Rn4bnFB4LkPNiPmh6EV2t5sqHlsLSkY/LyNYfc5au+zR8AjHIvPTtiXvBQ05c0qsPNUNCOuFQlXzRcLnuzxcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d7G9z/bS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54L9XMMe000805
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 15:35:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ZqbR0fKZ+8evj8gXjmb3Yq6g
	rxO0kRUezTH9ydk9GVU=; b=d7G9z/bS43rrmEoAfUML4SvB1LjWtrdwXZ1o/Sho
	QQIwI8J7T8TUppmC0ukO4nnMJ3rC9+HLEMts4oONoxr5Z3RcHpLVI+zw9DaNURHl
	C84FUou8xhctHDKCF9WMwTAdCbFE0NXpIZbNRgSRjwMlWroTYtAQWYTiDqEr57Hp
	q3iEvJDtxd30jF7+3C3StUN47b3Pe84qLGzFXRSgvH5gA+CaR8seKEAfhVfCfrSB
	K/I6D+OebToFtS6EnkPtlJ/x/jWPVwbqnziHWBXcO+0J5eNCMB5JTA086Bpj4ZTX
	tahmepDCBoNqI+EQlOMjafQlD7IyDA635ZCzGaRsRcAbuA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46s95thsje-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 15:35:53 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7caee990715so1894502085a.3
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 08:35:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747841752; x=1748446552;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZqbR0fKZ+8evj8gXjmb3Yq6grxO0kRUezTH9ydk9GVU=;
        b=Yqtgy3vIg1MW9zB39KynHAKDS0vn84CN0I2NAyVGdzwyxPI/+TCUGAhCk43tO+QckR
         PtuL8egGSsoRaKOyPJjCscLwMohgecfbUhqG76zRGsHkBAt6r6pOL0T9ukqhVkzU1lkW
         7pSO1Y48INqCEuHRk7h/1sAUPNvouo0p+Ft4TXnbTcB4ADa+zr2JBOEnFIcJ2vQ6mZz9
         PRKdKM1XeQziEJZE5pZB4rIzJQzPpbjpG/+FUVLP08rpP2RlTQhZ8y4W/kE+GyXiJA0e
         MuxmurAVp+/5fNkDwPEBbHufnaPrRaPmnEJbcLCfAnb/b2GERWUXpLgs8fTSxuS55glr
         uiMw==
X-Forwarded-Encrypted: i=1; AJvYcCXVyd2WD1hgPAxkj2cuGLktUnSDawfIR9axLsqT3B5Ym5q2aRN+m4jluG4ixj+ZS/Lnd24Low7Or/To@vger.kernel.org
X-Gm-Message-State: AOJu0YwSIYq6cETvFTmFM6z0UVGFLE7e4lQfFtq0FfGi/MvNvkziG0On
	0/ApZuNr69GvybtrsimRUDFzkfpwYHlwaUdQexvwEogwrUkE46GvRBBrUiRYtaRTWRfLvVo5QhB
	4Fcq+M8PHecIeKDG7qlem0XsXnfBK66I3uFE7snMpytxo5Vs/ciMGjKe21qab1qM4
X-Gm-Gg: ASbGncvR8C5GFlhLguXIqufJVnTy8AaSVSPoxoPgcneKvzKbnIjVRBU2N7h2/gT+jw6
	w3pKaF3JXrfeXckmuJyseNbdH76ONJSDFdw5MEY0oaHQqIl6/65f1LHzMkT99olTSyYYdhdJg5F
	9f3jVYkSnYh1pqqB0EvtPq2BaWyUaxhtUeVq+r7lbwO3g0v+rZlhBnpixCKLKRDVDjYV/9uYVYV
	KmGAwMuo77FvNXkfJGHSFdZnR7ctsqAlV/ATFqTEyQY71rAQ/7DvsBp86FAKKjw4Jj1/cfoBSum
	ZJ4DPllyjq/5QKIf6J+qKSUOVK77OV3L5o/UMfP6TsHpdOv49LyRcmuUBhpCDmMeWiOIeE/XsOo
	=
X-Received: by 2002:a05:620a:f13:b0:7c5:5909:18e5 with SMTP id af79cd13be357-7cd46718919mr2924692385a.3.1747841747268;
        Wed, 21 May 2025 08:35:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEif88mxj+wAdT9xL/pZzi6HaDSZ1ONvlON73ZZu7ioxiYyL60zLC0ZSOy7v6VGihut3FvXnw==
X-Received: by 2002:a05:620a:f13:b0:7c5:5909:18e5 with SMTP id af79cd13be357-7cd46718919mr2924687485a.3.1747841746729;
        Wed, 21 May 2025 08:35:46 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-328084dd099sm28483211fa.57.2025.05.21.08.35.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 08:35:45 -0700 (PDT)
Date: Wed, 21 May 2025 18:35:44 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@oss.qualcomm.com, Mohammad Rafi Shaik <quic_mohs@quicinc.com>
Subject: Re: [PATCH v3 5/7] arm64: dts: qcom: qcs6490-rb3gen2: Add sound card
Message-ID: <u77g7yhjr3ruwkmz4qnmyssuypk46lvvn7oiqdgf5lnofpczj6@y7qa2nx6ss2x>
References: <20250520062618.2765109-1-quic_pkumpatl@quicinc.com>
 <20250520062618.2765109-6-quic_pkumpatl@quicinc.com>
 <3fbffse4iqkegqjheeptnmsofz7fasqgnpbhhbzlzibv5qjxx6@dft4vafwlkfr>
 <3b498b4e-7159-4cb4-bc71-78f32feaf402@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3b498b4e-7159-4cb4-bc71-78f32feaf402@quicinc.com>
X-Authority-Analysis: v=2.4 cv=QKBoRhLL c=1 sm=1 tr=0 ts=682df2d9 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=46_AkE07xEbgfvBdi1cA:9
 a=CjuIK1q_8ugA:10 a=zgiPjhLxNE0A:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: h5-QxWOKz7VhOrGXPU0kzo12l8JvPaHD
X-Proofpoint-GUID: h5-QxWOKz7VhOrGXPU0kzo12l8JvPaHD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIxMDE1MiBTYWx0ZWRfX+31KDpVF7dB3
 xQbBFKGMhodZRYoj0dphfTW1szq05xCX9oI0LQPQrn16aiql/amvAutocM6l9hkgea/AkY1e1Ju
 tMpfcS45ITGpCQWth7ZOxG0ahWkZi8EOv+0uJjZjhQBwdnIPofXQKa/b2xqWbRbYS4wq8a4uozL
 fsLm1hwgxroH8Pjal1swafXeITvIk5nYOmlkCgGKpaEjNHlW3UyqJMxS22pHKhht6pDpJgv1Tyr
 vZH63nlRdYxHZPIkn3azBa3nfXzxyW536y8JUhld8jVWrqsnlpzZIoKSMja41s84K02xg3MhEtm
 F40P/Nh/CYCDM1hd2I3AIYMtbQVG1rBoCLZgZXEBCzBEAe4+MqG5Faj+eFbgaLECH8d1RK/jfN8
 aepS7HD939OuzdTnJpHKbPfJN7mGJem0NwN1R9xBGl4hPNXSqaZ3XbQ8sLqwB81agLrqRj9e
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-21_05,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 spamscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 adultscore=0 mlxlogscore=630 suspectscore=0 bulkscore=0 impostorscore=0
 priorityscore=1501 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505210152

On Wed, May 21, 2025 at 07:36:31PM +0530, Prasad Kumpatla wrote:
> 
> 
> On 5/21/2025 1:33 AM, Dmitry Baryshkov wrote:
> > On Tue, May 20, 2025 at 11:56:16AM +0530, Prasad Kumpatla wrote:
> > > From: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> > > 
> > > Add the sound card node with tested playback over WSA8835 speakers
> > > and digital on-board mics.
> > 
> > No WCD codec?
> 
> Yes, No WCD on qcs6490-rb3gen2.
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry


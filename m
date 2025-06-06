Return-Path: <devicetree+bounces-183300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F96AD013E
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 13:33:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7809B3AFDC2
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 11:32:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 016DC2882B7;
	Fri,  6 Jun 2025 11:33:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AvRMOeek"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2B4A284687
	for <devicetree@vger.kernel.org>; Fri,  6 Jun 2025 11:33:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749209588; cv=none; b=m+ZiFMgtdZto+LZpH66xyWb0V25SXGyHLrdEB9GbEsbJ4YbZ+VgqM9VWew0t9/G4SeKxbpsKbQxAfPK1QSl8bhmADh5cKz/PJ9j0lAh9ywPdOpDy2pBTY7/A3fykvj7y69MbZuomDkX2/wrvlYqOXFoVofIOHRu6UsKbBYmf5Ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749209588; c=relaxed/simple;
	bh=rjq1RfB16uNwsEaeeDKPTE1D7mp2xB4/K2KeD5ubBp0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DkyScBCtbAqpxypNYnXbZQBADuJKXjxpqeVI4mPqsi89SjNzo1SGwfLkYFOXyQtbJcQsb77BxVqj7JoRSpEzckWnG8ACtv1qwsdUhcqDMhMvCCEqD01+lX9cLwy8tjEdTckot6lJbCl445htTVytPVki1lPriWjO+5/ym9pb+Zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AvRMOeek; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5565pTEt006342
	for <devicetree@vger.kernel.org>; Fri, 6 Jun 2025 11:33:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hBsVUSV4bS/Pj8To1O6ismeXm6A04KaflnyzIZ+5dok=; b=AvRMOeek5EwJU2YB
	0fyP/4clx+tIreBlfo30vhV6WzpoZEFXv0O5iVcSwLbb78v+srVl0kMSKf1kGmY5
	zvXTpd/B0JpsKkLWBcuq+Ah2ZxATf4rVEunFlzhjHHgBDW91jTUS7wY1KSNcjAMq
	5FloY9SaMTjP5qiomrJIuXu2w0RiFdHGXd+UASM6TtntCY20EWrL5VaUmUDERLDf
	oHHbDlhZuPDulg+ljh9dHBx4Cq4XZepbv0+qAnQ7jUYFm7ywrun+pAzm+z1RAvmI
	gxyWfYPFS71srhJlh7iIbYWO+EbQ06TLejh54jKqGJCiU0aTt34QwFpaZEAnw2o+
	y30SYA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8t4f84-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Jun 2025 11:33:05 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d0976a24ceso45089985a.2
        for <devicetree@vger.kernel.org>; Fri, 06 Jun 2025 04:33:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749209584; x=1749814384;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hBsVUSV4bS/Pj8To1O6ismeXm6A04KaflnyzIZ+5dok=;
        b=DXFHvs5pAmXwB55ZMVqrBtDNZXT1hmt3DDfW6bSecAovydx974mFg80RTAZsm/ms2Z
         4qmjWKYQZV1+u4rSu9pM2EwFIDV502HElkt8v/oKklrTH/A50g1+NUQwhdUnERXPI1Jy
         s4ksafEz/a4f7DI7PO+7NFOKT5DgVXdqDbPwGDyp3yoy8LXHOaJWx5WP3IASSjY+s9h4
         oyn+6MFUXq/rXr3RIprjs85l/j3rzi8Wk74vgaTMB3A7kRooEn+8UFni2YH98mqqIUEy
         Nz3RTQZNSv5MDuZP5Odfi6OEXhWjfmFsRe/S6BRUsUPVWVbNwDSASEdB1zspfJQ+hNTO
         LrQw==
X-Forwarded-Encrypted: i=1; AJvYcCVYVDvN1Cy6RT+fBVm7AHC/aB9bVW8ELf9aoIIK6DBdzLp92U+x/GaLTkIXJWbk393B/m2qJqxT1Wte@vger.kernel.org
X-Gm-Message-State: AOJu0YxGYV6B8pHyp2fo0kGNH6zqzejUuLiejh4brOyavmIBprgS70Vx
	AqnDy7bX/aFlZOrBFD8IwGythgB4wgYi7yLPoT9gTkyKBEHndGz8mZInoVLxVBchcu7hByz8okB
	SdGXjnLUgLWqfFz4JQ0ud446KDoel8yDa8Ujb2spbajSpo0nSdOFaLs1liVnkX70n
X-Gm-Gg: ASbGncvgShIV1iBB7dxIM/ih3AEMmqhn926TWiZBwLmGIsHyjR4kO8Mp3QFEdu+3wZx
	9OX67XxnUhx5H7Zda+I6TgvdMXbFCwlGWVXALmvuSckQRRg1XH0sqmQMb8sI6YZ6JiKEfLemcvP
	SzCuWMhjEA7nntY6Qy712MutglYFzAXiBI4lAKCEEVspOz+l2oWfbrEwHJT/7ebxepj2RVKEMJu
	W89D2hIrsSpEEGYs4lHshV7tq5zOcBysFmoZrfDpYEPfDp5BaWdGrIhudQjSyM7Q4jpYVzVMnOJ
	sdMyh5Fqd5SWTktQjBNJ9WAh6ul1K1l7lLlMF0IqObduAIZffAI+9oeauWgMl38dfQ==
X-Received: by 2002:a05:620a:410e:b0:7c0:add8:1736 with SMTP id af79cd13be357-7d33df1fe47mr93551185a.13.1749209584472;
        Fri, 06 Jun 2025 04:33:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFkuxkZEdiQyqedab+Vm7k2HP8tSudyEGg5/Rxa0+D0cherRON5LyZpShuOvPOo20kuyO7SzA==
X-Received: by 2002:a05:620a:410e:b0:7c0:add8:1736 with SMTP id af79cd13be357-7d33df1fe47mr93549685a.13.1749209584031;
        Fri, 06 Jun 2025 04:33:04 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-607783de2bcsm873720a12.68.2025.06.06.04.33.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Jun 2025 04:33:03 -0700 (PDT)
Message-ID: <05534fa7-9479-4fe0-85bd-0dca5541f739@oss.qualcomm.com>
Date: Fri, 6 Jun 2025 13:33:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: qcom: msm8960: use macros for interrupts
To: wctrl@proton.me, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rudraksha Gupta <guptarud@gmail.com>
References: <20250606-msm8960-irq-macros-v1-1-03e573ba26d6@proton.me>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250606-msm8960-irq-macros-v1-1-03e573ba26d6@proton.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 8AQm7clB8b7g0zchK5P9OMkVYZZvkeGn
X-Authority-Analysis: v=2.4 cv=EPcG00ZC c=1 sm=1 tr=0 ts=6842d1f1 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=MzN8uu8svZ0T6_zCNRoA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=lZGKyyPKw46fRox7ShMU:22
X-Proofpoint-GUID: 8AQm7clB8b7g0zchK5P9OMkVYZZvkeGn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA2MDEwNCBTYWx0ZWRfX+XSpd0DX08Jv
 rOBF+7e8sywxStEV3oG/3YSnNEXZ8AMwm8EcqrIh8ob59ipTWThEo7U0ZjgRA2WyofDTyxttpjV
 eBng67bRXD+9EjQPHFL59kQv2tGSIHVTh2+wyAwN8uVLU2vNYlAHpcXKhXzPOY/Aa7XYGSQrDxa
 ZAiKe/llB7X33OwujLZvaOBLFD/Wn2N9BiFx9ENtgfn8MpzLodKUXRjRETRi33bVrPHqMLG36/Q
 Wx2LX+fCPVxNnwLYwCGLNOmhqdLdll1v17xPmdcSFnAiPVHjnkcMCsehDdVdIiZPuuM9XAlL25u
 qR+45QdpFsObPqSm875yYovLjPZ6Rm+jVtD2Igc6wpnlAdUwcys4pAwr2YHFEMLi0Ne5Te5+C/q
 Pbl6wPaCt7vE0ocQPWdjPXTgwgftpLUZJq5K1QmWSK38s2pa+OI69TzoLIPJoc6xsByV5n40
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-06_03,2025-06-05_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0 mlxscore=0
 clxscore=1015 mlxlogscore=660 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506060104

On 6/6/25 1:03 PM, Max Shevchenko via B4 Relay wrote:
> From: Max Shevchenko <wctrl@proton.me>
> 
> Replace the raw values with macros. No changes to the output
> 
> Tested-by: Rudraksha Gupta <guptarud@gmail.com>
> Signed-off-by: Max Shevchenko <wctrl@proton.me>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


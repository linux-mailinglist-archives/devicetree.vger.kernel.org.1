Return-Path: <devicetree+bounces-221305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B1494B9E6C4
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 11:38:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7F7C01891ABC
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 09:39:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A05112E9EA8;
	Thu, 25 Sep 2025 09:37:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="USvucVEw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C532877CB
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:37:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758793033; cv=none; b=ON64OBTFVOGph4siuIM5NTggtvcVVLoENMUubEcrAgyy2jxxyyH7ANuKTbsT/RtOQ9y1AP8LudOAeGxyXX24e1bHkp9VhwsQhp+uNXF9LdHPKmDYctfXT8/WoL+46hQPJIzYUnQWeIwlFXcaW01tBTJJqfANtHi7isHzRme6cog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758793033; c=relaxed/simple;
	bh=zamVv0dXOTdYNEn2puE91zH5uRrPdj3WMXEeHYVBzVI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ijCJwjkH/pj/YyotveSJCSn7eKwKKYvifyWIsMviMEA7gFyPnJa4s6gr0fu2y6L8pcBQaNgiMjyIYlqLGUp/2/SP5mdqZhzzwxqtHKGMBhIR6itVp1bf0gIDhfcmccxLU13toNMs5odhqtIB/6Z4FzAZcVzsFEEMmeENgLStFVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=USvucVEw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P4aTiv027679
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:37:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zeVa0WZkgGit33CQLVzL5GAxI4BelhXE8gH2cuvDak4=; b=USvucVEwWX5vGxBE
	LVg5Xvi7Fx4WN8BKLqsVOWdNAE/TH+j+AAY6a0N3hJ6B48VvYBi5YQxG+slFxWCk
	+q6x5cQ/BVELtr46VFsWKY0szkEVY42G4QaLF5avDysrH+8ukM3os+BqKS9OMEY+
	qy91E90w4tAHlW7nbSAOZsOOt7/2VHcVMes+nhVa6YUAToMTnZfgi435xk2lrKWc
	ANrhFdO2vg4T2QdlnXrKhIm/JtbkKYYjauYCX5wV8ow2JRQidVJXrvrWfEaYPuGK
	Kxfg8zg9Lip8NfNdR23vAmM1f1ECL+iRg9kL8qAPZzYWLSHEY5aKf8KeQfklB/PA
	BgKUqg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49cxup0td7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:37:11 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-85db8cb38ccso6278885a.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:37:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758793029; x=1759397829;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zeVa0WZkgGit33CQLVzL5GAxI4BelhXE8gH2cuvDak4=;
        b=N+4MTdlGcTB7DIaiHcn7IE76ANZd7UIxzlNq8+atq5wMxya0SS/Tj7AQ2hK6XnlY5/
         921xSat8wsPdNQ+lEgqa+o7dUG8gIn3nd/KhULulf76zvmOKSUlVW3Tn4jsxvSd9QX4a
         mDgpJkkcyvQwoQYuY9ocSQQkDixwb208PZal1vql4HHrEHHvPVVjZYp5sJZ3s9jIHLjm
         XdcwKHKeKhikhcpD4r5ZDpUvRGjmiAHfRb02LrRxmR12N6tdMsBTE3ecFQXCe0+tnZQl
         QDjXlbfbTtX+l5GVwDYPGzRLo6nDgadxVcGvzRzduPf7URgDoKXD5KDaDPgbTh3iEZxa
         iFew==
X-Forwarded-Encrypted: i=1; AJvYcCW/joBkdlVumTj64/zJmuitgM9xPZk9Nl9I0OQYz5iGc0jb1BtrGxIe017dtSQzUd2g94dE1ePEbMPy@vger.kernel.org
X-Gm-Message-State: AOJu0YxGQUQE48BA7P+ntHXLWbpmeQijudjxvZ8wzm8Jx3/JwZEBwCdn
	OrLzi0XX5nAhz6gecZO8Pot61WF4UDI66NEqf1vgFZPagr59rB/zpXtJctn84ozfBSSb+JzaXKj
	uLI+gddEZNP8sknrDh8Ey/9LVLtDN9D5vcxlQlWvhp5I8UnwodSXsm1+bx3RRIqrSY9Klhxb4
X-Gm-Gg: ASbGncuWIetfTdUacxOUKedfCoOdnSCGm7P0d2F//EsDHCQMs/Dpr12G5mIIb+T39/Z
	MNveb/wzWudHRM3CclCLuqy/PAdQMzGSPVarz3p/de9n7VtvAmhOOQ7A034d/X2Kl4MO9M+BOMT
	CuSe30wQP3Hkd1LFI0ICbyvOeJmmw05RII947+69aHYC+K/swQCWDv9BKstWp6+Zf6Jfo/9frVf
	Y4oUb4de0RNlwPAezQC788IC8lBmupDg0sLj3gq7Fkh0+142zqwwfAOAQOLLsqa7y6uUn/JnfHr
	e2PkAj/y+bxcP66mXU60Wg8JsYiIhHY36ReRuQ/h7e96YchQqDd0+Z69/N+gMHVJfbG5vIU8V9N
	Ow3OPhDOwbx2//HEQQh1opQ==
X-Received: by 2002:a05:622a:7616:b0:4dc:15a4:60ae with SMTP id d75a77b69052e-4dc15a462d0mr1290841cf.4.1758793029520;
        Thu, 25 Sep 2025 02:37:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHhWYbhiie+DtdNK2tQZ+Tuc65d9LphLjEc6TZpsNJ8FCEHPxhcyKa4Sn3ApENdJ4f9vHV2Lw==
X-Received: by 2002:a05:622a:7616:b0:4dc:15a4:60ae with SMTP id d75a77b69052e-4dc15a462d0mr1290631cf.4.1758793028998;
        Thu, 25 Sep 2025 02:37:08 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b35458950edsm128031966b.90.2025.09.25.02.37.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 02:37:08 -0700 (PDT)
Message-ID: <a078c6a0-5a54-4ad5-8e3a-c676783e68a3@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 11:37:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/8] Add OnePlus 6T display (Samsung S6E3FC2X01 DDIC with
 AMS641RW panel)
To: david@ixit.cz, Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thierry Reding
 <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        phone-devel@vger.kernel.org
References: <20250925-s6e3fc2x01-v1-0-9293016768f7@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250925-s6e3fc2x01-v1-0-9293016768f7@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=B4a50PtM c=1 sm=1 tr=0 ts=68d50d47 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=CYF1pGrXqkiHziMhkFIA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDA0MiBTYWx0ZWRfX2R19ANXZK3jW
 ZsQmmpLeNXj6/gStOXXSfLz6+hgjOSetObZTqvsgyxUkcR07on25Hieft6hLI73x20hIa7OacEu
 ieB4Z9dxHjPXMNbSeD32x6ADAN8LTUaikJ0oKP3rw1R08DPsVdMrnfD8awfLnnpA3tQ19WJ5jU2
 KXZU0QAfHliyi/MuqKgn5zT5skheB/Hgit6qXGQkd6z62w7w7j/249slVDLKFRdCgLq5+JkwCwl
 fcTGiZNVhj7CVXkine01hhHiIvfUX9uzszIGWoz/bJC0Z6CyWMgceuGM80fJReha3uD09Y+DbzP
 nsYnyZhCQZV1TUa+yUPqugyjv7h84dro+tToYWsYefvvI2XXIYDhvvpIJcuUKLUUvMR4oko0uFj
 TJdsOPbB
X-Proofpoint-GUID: z1x5Rwfd_x-WuO6kFD93_qbWuwF_V0tC
X-Proofpoint-ORIG-GUID: z1x5Rwfd_x-WuO6kFD93_qbWuwF_V0tC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 suspectscore=0 priorityscore=1501 adultscore=0
 phishscore=0 clxscore=1015 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509250042

On 9/25/25 11:12 AM, David Heidelberg via B4 Relay wrote:
> This patchset enables display on the OnePlus 6T smartphone.
> 
> Minor adjust to the device-tree of OnePlus 6 had to be done
> to properly document reset GPIO used. Also same adjustments
> had been done to the sofef00 panel driver (used by OnePlus 6).
> 
> In the last step new DDIC driver is introduced together with AMS641RW
> panel sequences.

I think you skipped the elephant in the room - some of these patches
break panel for the phone intermittently..

Konrad


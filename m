Return-Path: <devicetree+bounces-239858-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8BEC6A11A
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 15:44:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8EB7A4F98D3
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 14:34:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C54B335CB9C;
	Tue, 18 Nov 2025 14:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hO6ocDM1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="B9RQcX4Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F3A35CB86
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 14:32:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763476345; cv=none; b=nk3Qz73ZvnAGuSMUBT1KSwzbA0wTWuBVgar49YTmYafUlEkzAheOLwkiq90IN4ZFPH9xAlIg6/adTFJgVDptY5b/ML9GpAaetN+OiUCjmLI2fHUmp3QjBQ3JoeMrWBdqRqIzV+1Lc26DK0JJc22qD1ZWfkItcwWqGo2D5K2xINo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763476345; c=relaxed/simple;
	bh=8RhPzsRzALU9XX24Ra/bTl3MRvJ5zAjKxYXGWEXU0/k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QBdfGeJ2h5gc3tLMcsN0M3/xa41eOKA0diCRIaBQ1dD3IGX/Sh/36Baf319aF2KUvFsKERiP5wRXleLIZ+BgYcjxvNDyLnFQhyk3XMdFcKMbJY9uECgfE8SOB3vxbXDDLcpzkpYoGODdrcUIjpwRW3rNwpm+B8QyxiNEkOswjgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hO6ocDM1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=B9RQcX4Y; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AIEDVMA385916
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 14:32:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	X+H81D9tm/ogCtYv4UIOH4p26Sjf9mRjnSMPfTGzjNE=; b=hO6ocDM1a/rsD47/
	RFl8oMy6DAaLraajt6gkHGgVezrchrr0fNIJGvCRb2ZaLu28bj3YOXJani/d2jzD
	v+rBtrkkA/RaEVCbxequ6yVTz5k46GHZfuMPi05WV53ZBS7r9m3GlU3YDqjnEtc/
	lB3UUUwiI5uB8lCOP+tyJD9k9D7ic2CEp2C4vcQ+QP1f54vftfOib+bJDL/856zZ
	OTvpz9tQjjRc4h2d+WQNZ/W7fZBWI21iwFfj126+8W3y9y5iZII1nJy07ZG4k9Oh
	3MHx2lMMSYS+EgdMB+wK6CzQtgRh7PVUeTVcNnRmEG1Uu7wTVxPeUO7l1XwtDEFa
	/5c1Ag==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agag8jrjp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 14:32:23 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-55955f44aebso675384e0c.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 06:32:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763476342; x=1764081142; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X+H81D9tm/ogCtYv4UIOH4p26Sjf9mRjnSMPfTGzjNE=;
        b=B9RQcX4YXhdms8WmgF/K+jKm/0nOv7sI52MJhtCj8IjXX/c/H/ahz6VvBi7/sLEpMF
         o3p28f3D9UtUUhVEeER5OMuJLp96qY+8hJ06PMtVebu1tE50EeMI+gOqyDVONNXAL/76
         lIpPoDozlsf01E0NwpR7MMRxNub6w7cEyu9mYIuGcg035FN5Nfxujn3mp5dFsmn2RB3e
         ngU6IZ0B+2vSzalyPwVHYusG4FV41p1gu3/spNQpDrSvUz08ac1N4QAjb86XGLuGOTro
         qxCVx+6jnrw2qxPXvN44ePc5/EMQ14iKSerZbjeaKXpRnBZHd3m2OtQqhlyxwBLG20rR
         lpuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763476342; x=1764081142;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X+H81D9tm/ogCtYv4UIOH4p26Sjf9mRjnSMPfTGzjNE=;
        b=Uanuu5kDOvPngVe9WwHr0fptwEWQKIUW5VsDdCgVK+7nLX8pY5qaOrjd/7kvv6jyiF
         C4EQGzlS09Zv4GOrt76FddkiHCtCu9n6dymdWYXKLSvEuAuIDcYjBmPVKJBYX9C/UK/K
         JPGCmHtTrdNvsTPuZOyGsfMsceI7MkhNRcb7oaHmTCTrLAvYOSQKEh0GWMRktJnad6vL
         Bp5lzEpdCNfuvqBIreeD/m5eTuqqWV9LDo72xxDtgMcvxEdYXLTCIC7/EnWYFsH2UVzO
         jsRnUPYADGabmjBPj34AK5ljwLwx+KO0lVk0T9FbPpb34e6wQChW0zZG+Pj9fPIrJnkr
         gFEQ==
X-Forwarded-Encrypted: i=1; AJvYcCXjZEv1pWTOMbQalfCjwrM4anmhRTjaNFmqVJp57mITe9Wp2obTV/w96cfNeYJvY6LFjtVzeMMJMT2W@vger.kernel.org
X-Gm-Message-State: AOJu0YwHJgFK2pSP5xnL6v8znnsDY+zOar5tr42REd7wNIjyud55Vp9R
	V9JB/rCzvLWGEsfzHssEJlhySRhZ8uJwpBok2aUN4LFinJ1yqoidnO3vC8YZ8dNYLahBQrt7mDq
	pxZ5ZHeXe0hW103VIYZYLnaxzUq7nsezvM9b+xJLUkE2suAcXINR69N8dlhFDSeWM
X-Gm-Gg: ASbGnctSjWHR5yOVLEDjx3FsU4CihOdiFapXWw0IrWk51PnYb7xa6oewfH2Ws4gx54p
	UeoYhcBa3jKl5t24cZ7lqLBQhj6iUcxYqwffYOIZOHZUpp97EDE49ReFY+AiwBNHBZtY1TJIe6O
	9at8mXAvsZ/qrQNgrWR6gBXBvWT7LTBypdiLPDztAqusLqiutog9u6kYuN00vkE6DTSht87GlVm
	7qMmnDXTERlEdIa7VX8dX1jcNXyw86G+zJEshANnHQXGQnaSH5mA2cnQW1CnNsdrUGr+LboI4Qh
	5DJmY1CS/EiMmMOCdqRXDMbotWETyac9x1mXwnBlCRr6u8q6DpRf5ljU8fmE4kvKSxeKBQBSGjq
	fexEy4UQ7ZmOfHKw3hb9pvyD/R1zU+m91zvSoV4Wld0jrD+3Nn/wkGfEi3cRQG3xLsoQ=
X-Received: by 2002:a05:6102:e0a:b0:5d5:dcc1:3bb1 with SMTP id ada2fe7eead31-5e193d0c0d4mr394737137.7.1763476342473;
        Tue, 18 Nov 2025 06:32:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFo+F4jj0zEA0JoBK4MyQq3HW3oKvu9IbH730uCEpz4uJ8wZN4B/oo/d5FeD1zHfduUN+Z4KA==
X-Received: by 2002:a05:6102:e0a:b0:5d5:dcc1:3bb1 with SMTP id ada2fe7eead31-5e193d0c0d4mr394725137.7.1763476341963;
        Tue, 18 Nov 2025 06:32:21 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fad44b4sm1380994466b.28.2025.11.18.06.32.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 06:32:21 -0800 (PST)
Message-ID: <4da03f13-1e45-472c-9435-95156389ba83@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 15:32:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sdm845-oneplus: Don't keep panel
 regulator always on
To: david@ixit.cz, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Casey Connolly <casey.connolly@linaro.org>
References: <20251118-dts-oneplus-regulators-v1-0-79fb2f0f253b@ixit.cz>
 <20251118-dts-oneplus-regulators-v1-2-79fb2f0f253b@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251118-dts-oneplus-regulators-v1-2-79fb2f0f253b@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: PtDYgizZ-uhVrCY4_BCV0hpPegiN7NJn
X-Proofpoint-ORIG-GUID: PtDYgizZ-uhVrCY4_BCV0hpPegiN7NJn
X-Authority-Analysis: v=2.4 cv=G6sR0tk5 c=1 sm=1 tr=0 ts=691c8377 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=b-4XwQHDJI6FaDr3APsA:9
 a=QEXdDO2ut3YA:10 a=tNoRWFLymzeba-QzToBc:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDExNyBTYWx0ZWRfXym3HINfW68Ib
 ZA6axzFPm7RGtUGc5oqTVRvgu38qPTewxDkCIw6fVROMiF8RcoHin7ZgcGo6WINeT+23k64C+6I
 mjJPmDkdziHyRE38LLl9C1vM7fT15CvwBx4XO54XcfuP3gXtIuBBiHYdeelFX5AZ73Eqsm8Up2A
 rUyWjhvOa7xPwBCMQraAnZB60FIdcPANG0xDhsF5X7VibIBgYdtpNLy8SNmlWkpE3eP3j5reP/C
 Ic7bPSK010Am/39pnPwil5n/8Q+w3HlSupvLqC0GY0rCQSExLMlAUCXa6Z1KjjzSKpaIcSo+8PJ
 GFS2k12MmEGIux9AWUdZPZtRuvwJhKqOF9vVmCh07SXwqBC7Ee258d9LiX03ZRg34vf1gcAt/bz
 MBAUgS5RtaCSg+iNgOU+MFleazBp6w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-18_01,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 impostorscore=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 malwarescore=0 adultscore=0 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511180117

On 11/18/25 3:11 PM, David Heidelberg via B4 Relay wrote:
> From: Casey Connolly <casey.connolly@linaro.org>
> 
> The panel regulator doesn't need to be always on, so remove this
> property.
> 
> Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---

Fixes?

Konrad


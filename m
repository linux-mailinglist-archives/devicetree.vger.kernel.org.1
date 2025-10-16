Return-Path: <devicetree+bounces-227485-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC01BE208D
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 09:53:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3B427401F14
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 07:52:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7DFF2FFF9D;
	Thu, 16 Oct 2025 07:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="H8yIfGgN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1997C23AB95
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 07:51:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760601092; cv=none; b=DcY4NRRDCP2or9+NHsY6m4/2nG2d8koH852t7HOg7X80FgfOhmk+Hpdl9GGhXBatKPbTrVCF61z/ygdeCWHnGOq9GYZfbcQp1cgsAhlDIyCuzuBWFOOodaG8T5MnkMi6bPXRUlbrXOxaYAJVp41r9VCX1Hi5mo6yfp5Sv415UGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760601092; c=relaxed/simple;
	bh=2VFedUnaQCv3d4QtXQ4yKZxmJf80+KvjvkBPEnLIhDk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pK9rnURGAHjm3AaLma6h/xIuUOtP8BvFV6QD/sX8Su9A9lIWm/SC+bw30X4iXXy0eE9j2MmpnjntrwA0HgObaKjb+B673gfPU7nXrzgf/5GJE/ysZR7+p98/en1SNPvDRRFXd0/h6jqH76GLv8NLVHXGKq0rfZ0qwETR6/jQEd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=H8yIfGgN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59G7ksSj016276
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 07:51:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hF4W4Pb67pimHUF2lUJMLPPpWbgUCRfxD4sGD6fblL0=; b=H8yIfGgNVJU9lXU7
	xE36ywOmTTxDMPOZuRYq6LRNXacYNfwnkUUtlbs2jdEH8kVdwCJ//rjg9J467ZSP
	KdV8nhdrRKKkjVrjQMcCe16ItfaiDM6A80tuuXXWZ2JU/ncXalUnXSAvSyd9cWD7
	1dm5TP7uMFOxcSDtFECERNtCt0e7edXpJkENBHaXPP+l/Q2V6hgi3QsIwqUflW7L
	i3U8fRk4b8/m+g0GZzQcasgImkkcF1IsjzRGsikWP3YffBTnxW63iNfyFkYqNUQk
	Q+JQrkjF7JOfs5B+ih/vrOi2fVljc3vOM+lVEPMLEUXp8wlwTKyeocBhLGKrbp7q
	MjHsCg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfdkfevy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 07:51:29 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-269939bfccbso7903015ad.1
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 00:51:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760601088; x=1761205888;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hF4W4Pb67pimHUF2lUJMLPPpWbgUCRfxD4sGD6fblL0=;
        b=do0BiEcqfxcv3DFq+tk3TIUysTYp9/ey4pJnC2h8Yxd3PbMH7U/AZYwA26di4osLqv
         kM64f/tTbB5K5GwD5GM3RvSpzeTCly/ui1+SjC/SjsEekgIBL9wbaW0P43xD0IqwsPAi
         EzHUg149HclIw/DGM62vAaF4pvtO+/0Jbl1VpG1AoaWpHNgvVevUn92jVPJbixAP0WgQ
         r9Zj6dsIMeJh/zzxSgTkH4ar/eLnBv9yh6uvk8AXCzzVmGnr0GVfBcyfpEHqATmatr1L
         +Hfj6fzc8WLw9A3/9VA3GDRNoVj8OcNY+9fvc2388tUovbeVqt2sUpg6q07xyRQM0hAY
         CnkA==
X-Forwarded-Encrypted: i=1; AJvYcCWhvBV86OP3VPBkmJE7fFIoyAhbUc2IOPlcQhTpdUg/EpKELVFS6/dobdiJCg6LGIaYx5Lq9Sfgk2C9@vger.kernel.org
X-Gm-Message-State: AOJu0YyyirDL//mInj0yDfdt6Lo75Odx9sUcuOJ/JeUdq18yoV9PNBC8
	PgEVDRBwhL0bBhFFX4T9VzHpYjFxBC53d2H6UPL9pkaLjcb1sPfM4QQfYzHVmq3l6qvUD9RdNSB
	0C2kPM2Qt1panlUUewW8y77wh6geu0dgmml+/0ZIcQtqCfqVbx+lydhDUgHFwobOh
X-Gm-Gg: ASbGncsRIUczIoB8QeX3sXEKIZvu5xojBySc/2D7QXP2iM2CgiDVNP1i64l9o+aPsh0
	Cs67vwAfDPkUqkbM4BEkf6LviO2c7b7scG6OTf+VHGiIjSORZR4Hv+NDGs6kD4MPlmp0aG2badN
	J5SoarDgcbkcgraTvaL/O1AhC+2PN7b0oL8YutssybCr3G8Vyr+yV7i0WvbNyUEnVxZiCreZHvO
	Vo9CHpruC5S8M1+gLT62tf7jgiduRzsL7jHdd3iycxlgL+Xtvnt1PNe+yGAsE2AKLYlwpO7Xms+
	kM7Bt3N9ELoCoyLUBpjo7BX31g4+5rjujihXiV8TnuolsCCAhumXYw1lxMBibVsDmSKS81Bd+KF
	9MKtqs9rMO6bJ50YG824KWp4FfCLC3pT4
X-Received: by 2002:a17:903:1510:b0:25c:982e:2b1d with SMTP id d9443c01a7336-2902741e7fbmr390196125ad.59.1760601088304;
        Thu, 16 Oct 2025 00:51:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHkWk699Cs8rJdoNF7c8p30aWtBOTi6LJBDiXqz6Xzdy6iqBryCPq1dLN+Bddi5eDeq4uxmdg==
X-Received: by 2002:a17:903:1510:b0:25c:982e:2b1d with SMTP id d9443c01a7336-2902741e7fbmr390195855ad.59.1760601087832;
        Thu, 16 Oct 2025 00:51:27 -0700 (PDT)
Received: from [10.218.1.199] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29099b0215esm20054995ad.112.2025.10.16.00.51.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 00:51:27 -0700 (PDT)
Message-ID: <fac1a1a1-43a9-4bec-a6be-812e7d97e807@oss.qualcomm.com>
Date: Thu, 16 Oct 2025 13:21:19 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 1/4] arm64: dts: qcom: sm8750: Add USB support to
 SM8750 SoCs
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Wesley Cheng <quic_wcheng@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Melody Olvera <melody.olvera@oss.qualcomm.com>,
        Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Arnd Bergmann <arnd@arndb.de>, Nishanth Menon <nm@ti.com>,
        Eric Biggers <ebiggers@kernel.org>, nfraprado@collabora.com,
        Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
References: <20251015105231.2819727-1-krishna.kurapati@oss.qualcomm.com>
 <20251015105231.2819727-2-krishna.kurapati@oss.qualcomm.com>
 <80c71cfd-e12a-4707-ad03-e03b0ac48838@oss.qualcomm.com>
Content-Language: en-US
From: Krishna Kurapati PSSNV <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <80c71cfd-e12a-4707-ad03-e03b0ac48838@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: a6ZlfZOcHnr1MnMP0ofI_eAWTdINonSH
X-Authority-Analysis: v=2.4 cv=MrNfKmae c=1 sm=1 tr=0 ts=68f0a401 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=6obPUMqE8-fqOp28w3wA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22 a=TjNXssC_j7lpFel5tvFf:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: a6ZlfZOcHnr1MnMP0ofI_eAWTdINonSH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX5RyJ30rDaBv7
 7WremKy0KJmilYUzH+E4xNoEtqNd3T5ulabNsN5arkhMFVDeFWvr8R6EWUU0Zf3ifX4WyPHlIgO
 TOhHy1501xyFeRk/pqfS96E0CWinGy/XYbOLBG0O3rfJLb/BaBraVh6IDCYyy8NZ6+Tw9enQClL
 C0jn3rBbs5n5NvocZJ+F0S+Da+XdAFra+uw5XqLf/V/uBwzjImBZT8Nxt3yWrlYeegnJrfbUhi8
 gphwV11suKprn951rsSGiRMIZZZGTxC2QGuYKBY2tbJiC9qP65KXVLBRtmdcrthXo79BtdAULFz
 GlBDJPlcYASbhQwr6FAB2zfFTS7uTk+DZdhEMbINEn4GyQCeU/sF4BniMNaY79N+amOOhZUqs9m
 92vvFh/vyEG6Oj8Lypi6RbDFJMjA2g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-16_01,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1015 adultscore=0 phishscore=0
 impostorscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018



On 10/16/2025 12:59 PM, Konrad Dybcio wrote:
> On 10/15/25 12:52 PM, Krishna Kurapati wrote:
>> From: Wesley Cheng <quic_wcheng@quicinc.com>
>>
>> Add the base USB devicetree definitions for SM8750 platforms.  The overall
>> chipset contains a single DWC3 USB3 controller (rev. 200a), SS QMP PHY
>> (rev. v8) and M31 eUSB2 PHY.  The major difference for SM8750 is the
>> transition to using the M31 eUSB2 PHY compared to previous SoCs.
>>
>> Enable USB support on SM8750 MTP and QRD variants. SM8750 has a QMP combo
>> PHY for the SSUSB path, and a M31 eUSB2 PHY for the HSUSB path.
>>
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
>> Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> +		usb_1: usb@a6f8800 {
>> +			compatible = "qcom,sm8750-dwc3", "qcom,dwc3";
>> +			reg = <0x0 0x0a6f8800 0x0 0x400>;
> 
> Please resend this using the flattened model
> 

Hi Konrad,

  I didn't want to disturb an ACKed series and hence I just tested and 
resent the patches as it. I will flatten it out once this is merged. 
Hope that would be fine.

Regards,
Krishna,


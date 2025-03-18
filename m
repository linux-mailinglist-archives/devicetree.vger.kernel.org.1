Return-Path: <devicetree+bounces-158750-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD4D6A67ED3
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 22:36:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1BB3616BD19
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 21:36:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28DCA205E00;
	Tue, 18 Mar 2025 21:36:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="opfCFub+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93E3B202C47
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 21:36:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742333801; cv=none; b=OxxY95xspd2t+aprDfobnQZnyUf8DD0KZw5FQmVljOaMykhfmYU42CcwWOczxf7HOzxcI51iKJdA9Ms8k4/7X/pFyBv0WJGrYYasidCrZcmM13wzxz7q/STv2wKo3TcBvsDMXWK/F2PgxeWptN6howucdKWwHBTVA+eYXHQMkRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742333801; c=relaxed/simple;
	bh=tMitTEqQw4Kms3E3oLuanNeRnAwfAUaWFSBpeuDWX5E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nkkIjDc3LiaqK4AY8WZ8ZC3nuYNtBBqkaPeIiRN972wMurO2s5bfjNzJlzDnD6g45/mejBBxmjzjvgWXGxffcmGctxIT2zpalLhSd487A5AIH9+yO7ZmZOPrUGJm0qH0apP9ORUG4BsAcTALMRVk4fTg2lhB866a3gfZ+dD58QY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=opfCFub+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52IGAT3Q004568
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 21:36:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Y2vcgzW1emQX/7iFJLX2wg5r
	EcXOlkERAyCkxjphyso=; b=opfCFub+SeAlKpeinR8f9Uuk3HLK48q1OGZdyYH3
	f3hz6vwZ2UPXbobD+ZcDDtizUHdN9bgRlz22P940riZbtQwOqSkKmZw1PmiLGrqW
	mEHKs/Sv1BjPac4DDHqFmMrt0jFl4sOPRAeNkZW3e128D75MyUt5Mv0YQgdAgQBv
	6bYdO16uLKmlzBJJ4CKWZzZyIUYW0IcPXjzGjyFgilSr+NjVtfC85dnvHv8pHpKb
	cuP8Si2JEZTJ5icOX4hu8gP+aeaPsGZ6du4bQuUGvYxhzxl3/NDfpEBlJxsvmXRV
	98hWkAHngN9gYBIFf6kYAszIsxzZveNRDjXta/rTDV/bdg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45etmbuv52-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 21:36:38 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c53e316734so1130785885a.2
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 14:36:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742333797; x=1742938597;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y2vcgzW1emQX/7iFJLX2wg5rEcXOlkERAyCkxjphyso=;
        b=a3k6vxc3s2UKxhd2nf7YD1ax32o2UgfSwtDJKPtBKM6cS2jnV50JKGirv/m9OcY2ri
         ukz9jAmpMbBl3zx6lu7bOo6I6fhBw2D+fZBygREU4xfB0KMgKXO5pNZqnF1yFJmpiWuF
         6UqE++rVh13ZFL/KGjxlHZdPA5c3RbFEAQpqd9V0eNieAzyg2CK+QV1SGcGBau6EiwCc
         nsmp25iVrAd0oRYK9lW9qhN5aIPbTd9wrPTzqJt1XIM2dqzLJIynWzAO0ulFZqVCvCqw
         XuDMDrMm6EU6Jt+BCFz0TxPOhAo5kJtV6rnVwycW7dOQeUoB2aSjLgCjgRLwzV3xI6Oi
         nWXA==
X-Forwarded-Encrypted: i=1; AJvYcCWMG3tnmf0JvdcX6cwnLLJo7VFemiorLMWF8RB5Wg48bLLfCDFibwX2rVUKY9Yr+KZbm7z7O0OAYXq8@vger.kernel.org
X-Gm-Message-State: AOJu0YypMkhjJY0NE5rZJ4CTnjAeU+4EOOHKjyvDltPipXBV1vU2qpxp
	egfIyHVOBZJEF5McXKNzrE7nEthMi177LvPGeO063GAEsoPqpuZWsET64dCyvGwjf2wPDl+X1eo
	Oq+RA9nmw16nRGvdLS8rLg9vqSQjJOKbKUuoUNyK3hA8LFDj6xNQDz9tykQp+
X-Gm-Gg: ASbGncuHK2aoaCMpolO1ScJ3opwTz2XezvcFJ5uQZ8msEB1Dkmg6FRgPcsQqthyP34r
	9C6VbYlHhBRMioUBHU6h3uAZj5r+EjTO7dSrqo/Edza/gckARYBN8Pw281Om0RDSlSXmcfMbbXU
	K++LcREKj2GeF36Gj5M0mu7n6CvrMnvAzTH/VkIBy05XNfmtH28rW3LjLKDOvXH7CIJtwNjNfJW
	1mdm08Fp4in4mklAmI1CwOKlR5dw9Q2sJDNIah8zsJlAWOfivVEGEWNYPrI7FQBAQx5bsw9m82M
	2y7dZruBmNam4OJ5qQpp7ao/lX799T50UpA1ucraO7U3YNN2U61hZ8xFHogaBHA9vRUVu0n98yF
	KXaY=
X-Received: by 2002:a05:620a:2a11:b0:7c5:42c8:ac82 with SMTP id af79cd13be357-7c5a8396c44mr35134285a.23.1742333797677;
        Tue, 18 Mar 2025 14:36:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF/vmeLV1QqNZOMnRz1Pxtv/XOfA8xE0/NtFtVMXjjnCWpm8PwSrKmdkweulpjAZxtvhFClTw==
X-Received: by 2002:a05:620a:2a11:b0:7c5:42c8:ac82 with SMTP id af79cd13be357-7c5a8396c44mr35131185a.23.1742333797372;
        Tue, 18 Mar 2025 14:36:37 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba864e43sm1821851e87.145.2025.03.18.14.36.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 14:36:35 -0700 (PDT)
Date: Tue, 18 Mar 2025 23:36:32 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Georg Gottleuber <g.gottleuber@tuxedocomputers.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Georg Gottleuber <ggo@tuxedocomputers.com>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        wse@tuxedocomputers.com, cs@tuxedocomputers.com
Subject: Re: [PATCH] arm64: dts: qcom: Add device tree for TUXEDO Elite 14
 Gen1
Message-ID: <l77iickvroov7crzg6s2i7nq3kakqgdtbqki74stavqkiwyjfs@rv2oegbwogxi>
References: <57589859-fec1-4875-9127-d1f99e40a827@tuxedocomputers.com>
 <5e72992c-170c-48b9-8df4-2caf31c4ae44@oss.qualcomm.com>
 <5hvghahezqms6x4pi3acgaujyhiql6mzl2xhzph5phhki2yiyq@oi3xjatj7r64>
 <129bf442-2505-41c8-9254-ad7cacefab89@tuxedocomputers.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <129bf442-2505-41c8-9254-ad7cacefab89@tuxedocomputers.com>
X-Proofpoint-ORIG-GUID: F-QZsXR59rt34zxJtk3PzG_ASlEKir1H
X-Proofpoint-GUID: F-QZsXR59rt34zxJtk3PzG_ASlEKir1H
X-Authority-Analysis: v=2.4 cv=aMLwqa9m c=1 sm=1 tr=0 ts=67d9e766 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=prfVWYIJzO_NFut4FmcA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_10,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 priorityscore=1501 spamscore=0 clxscore=1015 phishscore=0 mlxscore=0
 suspectscore=0 malwarescore=0 mlxlogscore=999 bulkscore=0 adultscore=0
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503180156

On Tue, Mar 18, 2025 at 04:24:27PM +0100, Georg Gottleuber wrote:
> Am 07.03.25 um 07:45 schrieb Dmitry Baryshkov:
> [...]
> >>> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-tuxedo-elite-14-gen1.dts b/arch/arm64/boot/dts/qcom/x1e80100-tuxedo-elite-14-gen1.dts
> >>> new file mode 100644
> >>> index 000000000000..86bdec4a2dd8
> >>> --- /dev/null
> >>> +++ b/arch/arm64/boot/dts/qcom/x1e80100-tuxedo-elite-14-gen1.dts
> >>
> >>> +&gpu {
> >>> +       status = "okay";
> >>> +
> >>> +       zap-shader {
> >>> +               firmware-name = "qcom/a740_zap.mbn";
> >>
> >> Are the laptop's OEM key/security fuses not blown?
> > 
> > Can this laptop use "qcom/x1e80100/gen70500_zap.mbn" which is already a
> > part of linux-firmware?
> 
> It seems so.
> 
> Because there were no logs about loading zap.mbn, I activated dyndbg
> (dyndbg="file drivers/base/firmware_loader/main.c +fmp"). See attachment
> for dmesg output. But GUI freezes after sddm login.

Does it happen only with this ZAP or does it happen with the ZAP from
WIndows too? Can you run some simple GPU workload, like kmscube from the
console?

> 
> Best regards,
> Georg



-- 
With best wishes
Dmitry


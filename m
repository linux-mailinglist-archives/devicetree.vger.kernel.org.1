Return-Path: <devicetree+bounces-183529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F1AAD0FA2
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 22:11:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 915B41891783
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 20:11:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A2B1217F29;
	Sat,  7 Jun 2025 20:08:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="o7dWBebX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1A492163BB
	for <devicetree@vger.kernel.org>; Sat,  7 Jun 2025 20:08:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749326918; cv=none; b=n1VH8nYoAN4mLsQkQ7NHv3uzrH6Cd7V0A6ShE3ydJBrRLTYdU7YDYe78av5tMN/Ys6Ly4wygPhUnpI2qWqvkd8t4xoIJWwj6nRuH3kS3qdRNgjnPJpGFs6j0jL3h6nfi5aHEJiZ5v8B+Jg6rmwCFuiifhQqQREzjfPv5aBsjbF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749326918; c=relaxed/simple;
	bh=VCmRdOUHHx69BMRY8Zh21+gZfzCtkEfrMaDX1Ai28fY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lgVnm4G8jKe6LpjGz63Tcvs2Re9zZEcmkLJZP/+Gdg0jBDt9gmKIHY6ZfzsjLzWhyVM4BGIQZrsa0FqQnkX966h++Vya3FHGrkK8Yt97QBFpQh4NJ9JwL97HfIhrIimvzO8h5vwIwbparBZCYXo6tgHB4xh0C0s7GJb4qSNLt/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=o7dWBebX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 557Hi8kE002728
	for <devicetree@vger.kernel.org>; Sat, 7 Jun 2025 20:08:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=LcGfjI1c42cfgKc7S4/kHbha
	JgN+ngahbXwD1Is9qfk=; b=o7dWBebXGy2Cs22/xuJV35Pxmnsjac75jmvdr0S3
	dtGm9z7kVKJL9nLHnG6beiYIxvRYu+LqzPWTLQzF88i/j7voi9xVL346mIrHCvPI
	CDYTeSpDaA7xAQvzQ6mrZERBuJ4q7yKHxn/2OebdZheO10KrUyS7PSw2Wn77ZGX3
	hVrN2ocOs2yjxgl8pNeQueDxjq8RGxy3cL4lWw035nGiKw2DW1NiXrjL/0CidDCC
	smmHUHqxrA2w36Ku5DWop5gvZAFpEnxTO8g7J4Pp3o5d4XCcpdtybvFq+YCpvwyY
	qyxlp5KeUs8rvM20sdLLnww+iJHURWvT2sJULIOyvjB56A==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474ekpgxn8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 07 Jun 2025 20:08:35 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c793d573b2so584998785a.1
        for <devicetree@vger.kernel.org>; Sat, 07 Jun 2025 13:08:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749326914; x=1749931714;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LcGfjI1c42cfgKc7S4/kHbhaJgN+ngahbXwD1Is9qfk=;
        b=Iwriiz/9B/ADvQkkaR0G/5HbJaUMBbPXYR1+lwRc/CP8mz3JMG565GnavgKMfLJo05
         qBFXhQuMCpF9y4P71VQTk8uS2gGXeUPBT4M86LsoQBsBgewcE3bC6hnuF6pzmH9uKR0j
         dhWksUYWuFd/cYi0OpIak1hQqXYyILamb5x4iaYPKUGpmSRkx/1nBVjOPHTXMfiDWT7D
         mIG+0ZMYGehS9vD1L53aw9z6uOYpJLIwdFuLOmlT58fSxhgtV1YpZ1N/Nwln+8Xs88ST
         gEvem7bnhguvwpZ+CbnULFnwiSIxX7BWijTN3L1aGDLpVkV/UVk+XY9akNzyc7Vj6rtX
         gIwQ==
X-Forwarded-Encrypted: i=1; AJvYcCXCMD0YJ0Nc8+gP44utnEXfA9yZjK0qpeRJxT3G4tgkOaG6ljW5Xi3NeUQUTM/8Tqd6heHSDGjwNCfS@vger.kernel.org
X-Gm-Message-State: AOJu0YyawtKyF8bbrcKIxWXtJl5ixZw+dQxUeTqxqNA7vWAPWtz4DkjE
	vIxdEnUyv5ps9mqVBqIxbQMAf0MmhccI8KB1nQ6RIJlLbrqiWm5JtM5Es+DxESKUAkSOMfZ2pT4
	EooWfEHtTDV4+3av3kHoNPjAbu54XGQCcYa99pXXuciAKIv+96c+31P08Eoyqu8bI
X-Gm-Gg: ASbGnculHSVNZL6h9T0YxE2ouU59+rg9RDpgZSnPbMiB+o568KvNwbSs9x48RovdC9T
	/n6esr+VaajO8KsmRsd+w3iC0o+N1x9/jxBHHd/qL/bTg/QIXEcEwkMGvNEyBoJzBcwvo/ltEaS
	KR02nKmK9ZxAdXQW2WmldiVkWJD0Yz5lId+IQJl/yjSXWoasDj45QwNJoinue1wWI3m1WETQjdL
	O05x5bDwjtNtV8xFJBKwZbSvZy/RUILznCcyxVMgM1LsZI6O4pQ7mgCUPBZ51jtFmy1gRKK98RZ
	qIY+bQEWBr5ndOwrtTNsuriY5Sr7dXB+336xS9WuGRePLAH+hzt7RHJvMm3yGvzIUHwEwdVBQok
	=
X-Received: by 2002:a05:620a:199f:b0:7c5:5883:8fbf with SMTP id af79cd13be357-7d22988e34emr1206537885a.21.1749326914460;
        Sat, 07 Jun 2025 13:08:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFjhcwfKBxBqhK/w/iqBpz8K5IgFSPkf/a8LQCs/4fz1R0yrkN5KXByabTonhsJQyxPWceGJg==
X-Received: by 2002:a05:620a:199f:b0:7c5:5883:8fbf with SMTP id af79cd13be357-7d22988e34emr1206534285a.21.1749326914070;
        Sat, 07 Jun 2025 13:08:34 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55367731785sm595624e87.216.2025.06.07.13.08.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Jun 2025 13:08:33 -0700 (PDT)
Date: Sat, 7 Jun 2025 23:08:31 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: jens.glathe@oldschoolsolutions.biz
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v6 2/4] usb: misc: onboard_usb_dev: Add Bison Electronics
 Inc. Integrated Camera
Message-ID: <lx6z62sadq5ijteuww3o5mriti45abty64ucmzig5bdaijumzn@dponhgcugds3>
References: <20250607-tb16-dt-v6-0-61a31914ee72@oldschoolsolutions.biz>
 <20250607-tb16-dt-v6-2-61a31914ee72@oldschoolsolutions.biz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250607-tb16-dt-v6-2-61a31914ee72@oldschoolsolutions.biz>
X-Authority-Analysis: v=2.4 cv=JcO8rVKV c=1 sm=1 tr=0 ts=68449c43 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=gxl3bz0cAAAA:8 a=EUspDBNiAAAA:8 a=gIeN6KSkFSykCpat-AUA:9
 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=kiRiLd-pWN9FGgpmzFdl:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA3MDE0NiBTYWx0ZWRfX+q9vwYiJlVHS
 25KmVzjcYyCHRwMhHhcMVv96AmUewHnl/86ZEjCSBYjkd7dDIKUbDNWq51YqL26UVfpXzJI83LE
 IGq03XoiY9To0q6FiRn0V4sFngLyK5gzMwojxAUOBPfuCi6AzIEFXAQ024L9v2AoOO79P5T+/6S
 rdZKIQFx2wHhgy8+EMVs4ggLdba5wNmX9AYH9vi+APAAYmJSpxTCGR3dpaQmqiYMc1h0duxb/6q
 g1oSEOrnXg+6zAr8I2olJ3e/ff7g9kvtVYF7tzqAFxy8cQgBQTpo4wVMjezHoysOgy6VDWw3ZVo
 PNSz10BlZUBmKLZQfEe3q/czRNR3l6aQJD3QkjClu5OIpoHT6ECZ+AL5iKrRh455wqj8rjbqz7S
 S/AziFPQlI3KsdOstdtQoARSZkfjBV0gTbsrup654Wb49odUKwpzuTDn+9g78o4OHfQ5BOpZ
X-Proofpoint-GUID: A4odXJaB8tejlBhNrMF0lwFz7dODQRCG
X-Proofpoint-ORIG-GUID: A4odXJaB8tejlBhNrMF0lwFz7dODQRCG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-07_08,2025-06-05_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 bulkscore=0 spamscore=0 impostorscore=0 phishscore=0
 priorityscore=1501 mlxscore=0 adultscore=0 clxscore=1015 malwarescore=0
 suspectscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506070146

On Sat, Jun 07, 2025 at 09:19:37PM +0200, Jens Glathe via B4 Relay wrote:
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> 
> The Camera is built into the Thinkbook 16 G7 QOY and directly attached on the
> usb_2 controller (dwc3 USB2 only). It has a separate power supply that needs
> to be controlled for PM.
> 
> Add the support for this device for the power supply.
> 
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> ---
>  drivers/usb/misc/onboard_usb_dev.c | 2 ++
>  drivers/usb/misc/onboard_usb_dev.h | 8 ++++++++
>  2 files changed, 10 insertions(+)
> 
> @@ -127,6 +134,7 @@ static const struct of_device_id onboard_dev_match[] = {
>  	{ .compatible = "usb451,8142", .data = &ti_tusb8041_data, },
>  	{ .compatible = "usb451,8440", .data = &ti_tusb8041_data, },
>  	{ .compatible = "usb451,8442", .data = &ti_tusb8041_data, },
> +	{ .compatible = "usb5986,1198", .data = &bison_intcamera_data, },

The list is sorted, so this should be the last entry.

With that fixed:


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


>  	{ .compatible = "usb4b4,6504", .data = &cypress_hx3_data, },
>  	{ .compatible = "usb4b4,6506", .data = &cypress_hx3_data, },
>  	{ .compatible = "usb4b4,6570", .data = &cypress_hx2vl_data, },
> 
> -- 
> 2.48.1
> 
> 

-- 
With best wishes
Dmitry


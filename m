Return-Path: <devicetree+bounces-224136-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E57BC0F56
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 12:04:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2D3DB4E5858
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 10:04:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A77492D7DEB;
	Tue,  7 Oct 2025 10:04:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kQzXMFq3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A2B4262FD7
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 10:04:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759831477; cv=none; b=mKN6lXRgoVW4hYShL7ibtXEoi15puC8/vJO53lGC7c0gsy/lsz4p+PdrWOk1GVHvJXNzCic9Mm1EzJiDZAOejgqhNNaS1h0FseDdUVqXE6Fi/OKR2q/jnIXWjq1nPcZo3MqioaKKHmTzTJflGQijlGfnJ3I8uVdT9vMB9dSTCNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759831477; c=relaxed/simple;
	bh=syP41pd5R9Uci+nN7DevDmDEh8xWqwmT9OEsz3zK+k8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mVcDd/IIGm9aFC3+0Su/ZBI6pHx0WoguuxGLOHTcQzheLDqp2eX5+V2U/rf7A2PDSsOCQTd5B5I5wGFzUKcjMAt0yHSwZh+ugeIRrvGl/fzqtUFqqZQRJ8J2h95ZKMnD3mOJfiB2QcTgL40AedW/f/7lKv6PLFSjcMAi+MI8Rp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kQzXMFq3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5971Eb9H018828
	for <devicetree@vger.kernel.org>; Tue, 7 Oct 2025 10:04:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UVqmNkVuyqg9n+wG3FSRNwGdnQf4FyV3jtMEgH1StCc=; b=kQzXMFq3dERTPmJR
	i3tyTvk7Qkt7984vJW+dXREFf6N0AEzJqZRFzLCx1jHzwMyGu7h4XDjnHv4Rxb9I
	YPFowLoQ8cwKkyQYS49ELr6a8eZQf9KIlJEwqlezEGztQPfABLJhh609toKvQ2Je
	XrZChq57p+bQtZdX8WbDTnmv3Pg/aEt4sbeCkrYFBbDYCs8Gi+4p1G3QHSAju9Je
	FRV6sZL/cgJIosLS0q2G5UdMKSCtmTNFxdrvluAMyDnTD4mg3PYlH+IbMvIjSrD+
	pHDh15VEWEVjz8evWxOg8yEXMhUeZABWg3h59UuBbEs4FW2ZzULmnrAu/GMpsnaS
	x650ig==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jvv7prje-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 10:04:35 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-85d43cd080eso187510685a.3
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 03:04:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759831474; x=1760436274;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UVqmNkVuyqg9n+wG3FSRNwGdnQf4FyV3jtMEgH1StCc=;
        b=JTJdtHYViggeHZKfQ0ekE9+3ay8OBh6WmZ44REULvf2p+YykveCBx2giZQa7OKZ0ft
         VbE/lwpF/nFqsPeCRLTw+1esVuWROC3p1kGA8U/QIatkUg4rml47ImLNu6dnyYsAv35L
         E7WosuDVLZe3tsL3SUQQRAIB5OliIlsEw0MUmuJzgpim4m3h8l/dNwVSr3dHjFSJk17p
         PsUHVMxEhcwPLGHq4EhTcXM3HnybXrom5zfeIS3Mk4HVKylCwRdGV9HR4Bai94IwI3tA
         IeJbr4pK2Gfwnk7Ysdckl7I/Fsd1XQYm1RYsa2eMUXSM5EmsOLUQi/XyrCoZ34kxgPxK
         z5gw==
X-Forwarded-Encrypted: i=1; AJvYcCUR+scT6ltF6MQOgqz3JxRmYWyhZfso1RoghKMNvvmmkaDz7zcICb0T9VkrhYhmbVFDQkIMH9HwMz2Q@vger.kernel.org
X-Gm-Message-State: AOJu0YxzdsBn6gfoS2/WRZ52mpTS2nlw0vwgNyEMFLRcKSVqCq7/D33o
	qFbtsfUYgcGWQ/SFgcMS1+vy/2esIYnbALTunXp7i7YJvUdQBNzCuZO35Ew93fRfExBSYWzt+AB
	7sFO+oDLDSDa4hpzYTVRSaTTEgkyw2LbHtIuVMuYykIgNTEmsbvCKwi4yGxNF9doy
X-Gm-Gg: ASbGnctLNehkDUPYrvM5V/iQ/ORefMRAqR1tzvkGs9S5VPhaYU6mqOVlLWMuQi5EGJH
	TyTvjRFZ7hge4HFeYL93l/B8fPOYnGudV1nF/z+ZJQYHFtOLHz0NSkbyiwk6PZV9eqk45c0onGl
	dKi5lHlodcFnepu/rjwgzGog1jhhMMyM6VDRTDQZFUYbHwpY+SOaQgw3KF9FReVe88qCZjnXCek
	NU2tq7ORPIcyZXz7C4oz7PtGcHfnx/IRju+ZVfrlzHeqypsHTMQYx4hhlwxAOCMEWHlcBnl9v7b
	zW1D0XY+28xBbJTRCFWsNRrp2gq/VK941XzNvPyt+0Iu9ZdN7NYgv/JUkIrKBrvhuZcxcAbs00T
	lDb+Z9bl0/qQc2FoGs6ND/ICP4hU=
X-Received: by 2002:a05:622a:11cd:b0:4d8:85db:314 with SMTP id d75a77b69052e-4e576b0937emr121120081cf.11.1759831473613;
        Tue, 07 Oct 2025 03:04:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGNIWw2SAUTUQLNb+7LVAsg57ghgAbUy9HBwlXY4iZKFwFCHllk7t4lrcnif05kVwqiugILGQ==
X-Received: by 2002:a05:622a:11cd:b0:4d8:85db:314 with SMTP id d75a77b69052e-4e576b0937emr121119701cf.11.1759831473052;
        Tue, 07 Oct 2025 03:04:33 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6376b3b70aesm12333222a12.17.2025.10.07.03.04.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Oct 2025 03:04:32 -0700 (PDT)
Message-ID: <5a9a2ed9-9e95-4bb0-b5b9-e4e0edcfa8d8@oss.qualcomm.com>
Date: Tue, 7 Oct 2025 12:04:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] ARM: dts: qcom: msm8974pro-htc-m8: add touchscreen
To: alex@me.ssier.org, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Luca Weiss <luca@lucaweiss.eu>, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251007-m8-dts-additions-v1-0-53d7ab3594e7@me.ssier.org>
 <20251007-m8-dts-additions-v1-4-53d7ab3594e7@me.ssier.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251007-m8-dts-additions-v1-4-53d7ab3594e7@me.ssier.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAzNyBTYWx0ZWRfX28LvmcDLsOlJ
 IT2mUrXXVCcuHfl+o4nmHyEPNZS/8ARAWInXwGbjjXRubilUSfUZwcOVy2z2nlVDgHjdyyLWgBb
 BiQpB7lTRmH9qDZcC4bFENDgIowF3WI+q/VeDeP5eHv6wYgB4fuzTRPTk+Ur3AgYQdzBViAWcq6
 Dn/0QgLy0dxDAhEBKDRLeOaSTLUNelCMZ/SgaM/OPCJNr8Jp1o92TULcvWlCB2LG6NtyGeFBgs6
 Pu5hA1tGCoi750pETMnstI78qMMk9/XccGKXKrGEChW9YvBlEMGuJAz2CzphcIBsGLv2frPuoHZ
 +XeNJ2KfixV43TJWJPIDoGH3MxVqbavaIzWBoSjXI5LfMRT2IK3WBEwoa1woUw9r0dUWea9E4VL
 dulUQPLyqCSMnZnEVyp5/DxuTKIAlg==
X-Proofpoint-ORIG-GUID: WKQMeDh53Koi21sOjHtUOUlUIKBYSE4G
X-Authority-Analysis: v=2.4 cv=WIdyn3sR c=1 sm=1 tr=0 ts=68e4e5b3 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=8poMKPHdAAAA:8 a=2dNuJvzwNQBdB-WvFZIA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=fyZPtLC9JlAwSkJ5-iUD:22
X-Proofpoint-GUID: WKQMeDh53Koi21sOjHtUOUlUIKBYSE4G
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_07,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 bulkscore=0 spamscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040037

On 10/7/25 7:55 AM, Alexandre Messier via B4 Relay wrote:
> From: Alexandre Messier <alex@me.ssier.org>
> 
> Add the touchscreen device node for the HTC One (M8).
> 
> Signed-off-by: Alexandre Messier <alex@me.ssier.org>
> ---
>  arch/arm/boot/dts/qcom/qcom-msm8974pro-htc-m8.dts | 36 +++++++++++++++++++++++
>  1 file changed, 36 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974pro-htc-m8.dts b/arch/arm/boot/dts/qcom/qcom-msm8974pro-htc-m8.dts
> index 36eb42f0f3d9..040a256f9465 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8974pro-htc-m8.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8974pro-htc-m8.dts
> @@ -65,6 +65,35 @@ vreg_vph_pwr: vreg-vph-pwr {
>  	};
>  };
>  
> +&blsp1_i2c2 {
> +	clock-frequency = <384000>;

This is not a valid I2C frequency

You're looking for 100/400/1000 kHz

Konrad




Return-Path: <devicetree+bounces-262488-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kLlvAF60gmnwYgMAu9opvQ
	(envelope-from <devicetree+bounces-262488-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 03:52:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 35849E101D
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 03:52:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8BAF930C703F
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 02:52:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F3792D877B;
	Wed,  4 Feb 2026 02:52:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PtWu74Cw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EAeedPEG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B53322D7DC4
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 02:52:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770173527; cv=none; b=NvYkZpIcimKRSJ2O7rBGKh/F/TkgeSXca1x29bRDu18+BgSTWC/JXabmejPoUd1fJuzq0CJzMhd/jvgrlkbUj9RojtIy5UWg0y97+M6BqmIk9HJ09W8YBxPWKTbhHecekdScuRPpcZz/0Tm2MVLVUQ8UloqfJpOkCjMR+l4qWjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770173527; c=relaxed/simple;
	bh=IfDMw+jyi7Gt9ZB8cvYnwZCT80TJJK3O8/ukrv4vXNE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pySM+SCUtjMsA6v+QtWRbMXAQGZtN6TiSz+CQWxuB/Mhql1nnopze2QJ2M41xxlyiV1uDyMl92XdenvCkNhm3bti+XqGf4ANnVLBFQ9O/O8XjSpNfZUxRDw9x1Wjchs8nMxcs9Ug7ODWxOgF9nrUNIeu77HlAQtFjgobTtLuMr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PtWu74Cw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EAeedPEG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 613IlwOi2053611
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 02:52:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=HMZD68lR0HfPK9qnFpU3OmDV
	7NygAyOYGHnX12TjT6c=; b=PtWu74Cwb1lAMfk5u4SjCjv6NhUf+NnLMAuQKgT1
	/1vxgC33mxlDTpVuyd+luTY9UInR02CLr4Hitqvh0+LSc9+5oAMDNGvyy5pzi9WO
	9flb6dO/RbgCpil00sG1k9ljUO/VN/AoWKI9Ic68609ONfH+eV/P0mcu2v5UFcj6
	JS26geOtfZSGpvUbAYwyH8TjNpZk91X1RPEerkbzElIREqB2fRgftfLTOFgcrK0x
	tuqKWVGdm42qFMgk9kgKjA4XG0J0sRTsbOUUAwcnlbzP8ZqTdSIY9G/m048oGbM5
	r9kUqwgUQjJ9kD7R5jPklpUrxR3fm22Ndmj1C5xV2tFU0Q==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3gsr2men-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 02:52:03 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c6ad709d8fso124693785a.1
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 18:52:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770173523; x=1770778323; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HMZD68lR0HfPK9qnFpU3OmDV7NygAyOYGHnX12TjT6c=;
        b=EAeedPEGWRQah+RuKjBMpeWWKcp7er7Ntk6OQJMwZbqNsw7QWuc8f174T3AJ9ed/s5
         z14NVlShvmdSPjXmp44UF09nRerRAo0S1oMpAo5TEO6KW9Y9HtWk4W+ZqJyWGaziF1ZK
         T1QnvWsoeTY1TgRXICSB1uaVH1XeE2TM69yHFFoDpbVAWptV7ShUBe6cy8Z48gO4U0oG
         55wVQmtSyXlEPRLL5eyyAos4vdhCDWocM2fHrlSBFcWERfVCHmUQW3j4lOtQnLE+3StD
         mcr+f8+RZcFoecBLlqRzYpbp86j+RGPBo6T6pCD9e7B0vV8AUzJvmAtIiceyyRhWI/Ry
         e0lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770173523; x=1770778323;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HMZD68lR0HfPK9qnFpU3OmDV7NygAyOYGHnX12TjT6c=;
        b=F035SgnhRaAzvG4nRo4mX8fECZ5+vtO1wMjikN7VVnR/FCUQq+To8ul/Z4WOLU+7Xr
         brfh7l8MTsjRtvyZBLxTS8nKlzGr7iT7uChdAI2IbWQKg+UoXZrdOPNP/pc+h+ANINQX
         KhqTBQZT94x0iUViPT4bagFbGv/M/pQCmLQcHPHVzAVt5TdNirng9krqVNC7NJ8iMqt8
         EYB16P4gIqdJWyvhVM41MlQIABmMPXD4Qz5YKG0HsGjcBpealHeeYTNg0ZBvgcPblz6P
         HvsonDarIB3o32k8AaQfecXIHfispptrriPRP+HOy6abDML4yYxPmqEy9SWZmBWL2nIu
         l+ww==
X-Forwarded-Encrypted: i=1; AJvYcCXrfwJqvPnC2y2hwtyI6CL+EmqQ06wewOJuXTevwvFvOYh2Nb18Uxofe2IKLNZQAF1bl/j3nq1jdk6P@vger.kernel.org
X-Gm-Message-State: AOJu0YwYAUKPs9vCzBRet+f2l0DmWOKag9iCYsMW0fp9q6swqrk+3Qjo
	7CuuoZ2qGJouS9uEUOrNGBliMpwompqmbH6zdiz08bGA87GNrTYVWB3nDJTwG5a1LmCqTMj8mt3
	OUNkvyUTh11I5c8hvydBHf+9MGy59KyGZhdQajwVayQTcf7UjiGY/QsVOeLBnRCWZwhR1VQfP
X-Gm-Gg: AZuq6aL+LZ57PQN9NV1yrtAV1PAPgpbV53q7TNRX1DYk7lI03sBhhtTQRb+/uBAEydg
	I8s18gOzXTq73ipNkKdMJyVj0XKkXY1DZDNpBMT1U8g1sVfwwFkcvXJTIg74AsOYlEoo6qeEdSY
	ezxMQrHTtvEkL8pcER5FdgcKmzWYMJXE+rk8x4EdMe02vw+OUtziWMckWJxvHyWx5tfD8M9WXHm
	88neZv5Z7xIeaXiVXXbh62quH6meZFSZIaF97VyTa79fwPdv93uzf3HVvd0Ff3ZF6O67bnY4gIV
	SkBxyHr5Bzz9w0sklQ+Vr1rddT8PRaI1XG96FOap9bazz8u2eyAZpOoLnHP1qW0PF1iIKJFa6G4
	0pxjW2cQC4ROi7Z7ixkdhjKPLC7IWRCpD50Lak+ZVqqrrzvnsb7IxkoeqqYreIoz0/6SKKxDROh
	bJxm2t8YRK5JusLMI98tUE4yM=
X-Received: by 2002:a05:620a:2a09:b0:8b2:62ae:acba with SMTP id af79cd13be357-8ca20483bbamr591283885a.26.1770173522825;
        Tue, 03 Feb 2026 18:52:02 -0800 (PST)
X-Received: by 2002:a05:620a:2a09:b0:8b2:62ae:acba with SMTP id af79cd13be357-8ca20483bbamr591282585a.26.1770173522342;
        Tue, 03 Feb 2026 18:52:02 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e384df125sm302857e87.0.2026.02.03.18.52.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 18:52:00 -0800 (PST)
Date: Wed, 4 Feb 2026 04:51:58 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Roger Shimizu <rosh@debian.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490: Add Thundercomm AI Mini PC G1
 IoT
Message-ID: <sjczves57fwsxkaynczcso6h64ucqpppshh7woin5j7iwxtjjg@b6dwmnt42hn5>
References: <6cd569ad19ae8efb5f4244b3aa185754@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6cd569ad19ae8efb5f4244b3aa185754@gmail.com>
X-Authority-Analysis: v=2.4 cv=A+9h/qWG c=1 sm=1 tr=0 ts=6982b453 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=xNf9USuDAAAA:8 a=Pyvs7UqMSGUOn-iCcdUA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: BjHuLrO2hbZKtj0CplGl5ewOLg8wAill
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDAxOCBTYWx0ZWRfX3xLVkln4J0pk
 qsKx2wQYte6n0w48fV+23FJ5lZa1/k6Jx1S3g8AS0EtAw2V53GW1UdhiacDvilJZotcF0ucQNWL
 7juX2CY8m0CLOK8wrd6cA4MgEcYqkmHqjvyxs2zmD4UShdb/4yTREKbhffPz0jRCyG16a5fHprF
 KyBs/Yri3wyf+zwrRUw7MxFLyWdtpa3UOGCdFfUOCpp1mb3V6w9hrkJQ8CIE0jEF5fh+1LBx5TW
 1l/6pg4uIp1fu2oghjSM4wFEd1oi+CwEo7bTRKjf7t0gGxBI/TJEFw1/SFXWdGG9d98Rspu/fjS
 kqTNXMjBn0K+4k8OkAqVLn4IHEeokW1m2pGgej/o23jMseX/fc4q+fiCwgbHJFeds/G68ElQgrV
 m3IYXNWN9lU88owpUUQfWDiBn36zBLZCKZuHqrztX1D+WY+wh43xAsLv+92gk49YTzuHlbjOkYq
 s/Wv+kQR1Tlcy/r+4ng==
X-Proofpoint-GUID: BjHuLrO2hbZKtj0CplGl5ewOLg8wAill
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_07,2026-02-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 bulkscore=0 malwarescore=0 priorityscore=1501
 clxscore=1015 impostorscore=0 suspectscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602040018
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262488-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.1:email,qualcomm.com:dkim,0.0.0.0:email,oss.qualcomm.com:dkim,c0100000:email,8b31a000:email,5.33.200.32:email,4.207.98.96:email,4.224.43.64:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.2:email];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 35849E101D
X-Rspamd-Action: no action

On Sat, Jan 31, 2026 at 02:31:25AM -0800, Roger Shimizu wrote:
> Thundercomm AI MiniPC G1 IoT is single board computer with
> AI capability based on Qualcomm QCS6490 platform.
> 
> This device tree is confirmed to work as below:
> - GPU
> - HDMI output port
> - PCIe M.2 port (for external Wi-Fi or 5G connectivity)
> - UART / serial console port
> - UFS
> - USB Type-C port, with Display Port
> 
> Signed-off-by: Roger Shimizu <rosh@debian.org>
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |    1 +
>  .../qcom/qcs6490-thundercomm-minipc-g1iot.dts | 1110 +++++++++++++++++
>  2 files changed, 1111 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/qcs6490-thundercomm-minipc-g1iot.dts
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index f80b5d9cf1e80..b2b62b3eedda4 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -145,6 +145,7 @@ qcs6490-rb3gen2-industrial-mezzanine-dtbs := qcs6490-rb3gen2.dtb qcs6490-rb3gen2
>  
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs6490-rb3gen2-industrial-mezzanine.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs6490-rb3gen2-vision-mezzanine.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= qcs6490-thundercomm-minipc-g1iot.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs6490-thundercomm-rubikpi3.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs8300-ride.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs8550-aim300-aiot.dtb
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-thundercomm-minipc-g1iot.dts b/arch/arm64/boot/dts/qcom/qcs6490-thundercomm-minipc-g1iot.dts
> new file mode 100644
> index 0000000000000..0886de928789e
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-thundercomm-minipc-g1iot.dts
> @@ -0,0 +1,1110 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2026, Roger Shimizu <rosh@debian.org>
> + */
> +
> +/dts-v1/;
> +
> +/* PM7250B is configured to use SID8/9 */
> +#define PM7250B_SID 8
> +#define PM7250B_SID1 9
> +
> +#include <dt-bindings/iio/qcom,spmi-adc7-pmk8350.h>
> +#include <dt-bindings/iio/qcom,spmi-adc7-pm7325.h>
> +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> +#include "kodiak.dtsi"
> +#include "pm7250b.dtsi"
> +#include "pm7325.dtsi"
> +#include "pm8350c.dtsi" /* PM7350C */
> +#include "pmk8350.dtsi" /* PMK7325 */
> +
> +/delete-node/ &adsp_mem;
> +/delete-node/ &cdsp_mem;
> +/delete-node/ &ipa_fw_mem;
> +/delete-node/ &mpss_mem;
> +/delete-node/ &remoteproc_mpss;
> +/delete-node/ &remoteproc_wpss;
> +/delete-node/ &rmtfs_mem;
> +/delete-node/ &video_mem;
> +/delete-node/ &wifi;
> +/delete-node/ &wlan_ce_mem;
> +/delete-node/ &wlan_fw_mem;
> +/delete-node/ &wpss_mem;
> +/delete-node/ &xbl_mem;
> +
> +/ {
> +	model = "Thundercomm AI Mini PC G1 IoT";
> +	compatible = "qcom,sc7280", "qcom,qcm6490";
> +	chassis-type = "embedded";
> +
> +	aliases {
> +		serial0 = &uart5;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	hdmi-connector {
> +		compatible = "hdmi-connector";
> +		type = "a";
> +
> +		port {
> +			hdmi_con: endpoint {
> +				remote-endpoint = <&lt9611_out>;
> +			};
> +		};
> +	};
> +
> +	lt9611_1v2: lt9611-vdd12-regulator {

Please be consistent, regulator-lt9611-vdd12

> +		compatible = "regulator-fixed";
> +		regulator-name = "LT9611_1V2";
> +
> +		regulator-min-microvolt = <1200000>;
> +		regulator-max-microvolt = <1200000>;
> +	};
> +
> +	reserved-memory {
> +		xbl_mem: xbl@80700000 {
> +			reg = <0x0 0x80700000 0x0 0x100000>;
> +			no-map;
> +		};
> +
> +		cdsp_secure_heap_mem: cdsp-secure-heap@81800000 {
> +			reg = <0x0 0x81800000 0x0 0x1e00000>;
> +			no-map;
> +		};
> +
> +		camera_mem: camera@84300000 {
> +			reg = <0x0 0x84300000 0x0 0x500000>;
> +			no-map;
> +		};
> +
> +		adsp_mem: adsp@86100000 {
> +			reg = <0x0 0x86100000 0x0 0x2800000>;
> +			no-map;
> +		};
> +
> +		cdsp_mem: cdsp@88900000 {
> +			reg = <0x0 0x88900000 0x0 0x1e00000>;
> +			no-map;
> +		};
> +
> +		video_mem: video@8a700000 {
> +			reg = <0x0 0x8a700000 0x0 0x700000>;
> +			no-map;
> +		};
> +
> +		cvp_mem: cvp@8ae00000 {
> +			reg = <0x0 0x8ae00000 0x0 0x500000>;
> +			no-map;
> +		};
> +
> +		gpu_microcode_mem: gpu-microcode@8b31a000 {
> +			reg = <0x0 0x8b31a000 0x0 0x2000>;
> +			no-map;
> +		};
> +
> +		tz_stat_mem: tz-stat@c0000000 {
> +			reg = <0x0 0xc0000000 0x0 0x100000>;
> +			no-map;
> +		};
> +
> +		tags_mem: tags@c0100000 {
> +			reg = <0x0 0xc0100000 0x0 0x1200000>;
> +			no-map;
> +		};
> +
> +		qtee_mem: qtee@c1300000 {
> +			reg = <0x0 0xc1300000 0x0 0x500000>;
> +			no-map;
> +		};
> +
> +		trusted_apps_mem: trusted-apps@c1800000 {
> +			reg = <0x0 0xc1800000 0x0 0x1c00000>;
> +			no-map;
> +		};
> +
> +		debug_vm_mem: debug-vm@d0600000 {
> +			reg = <0x0 0xd0600000 0x0 0x100000>;
> +			no-map;
> +		};
> +	};
> +
> +	pmic-glink {
> +		compatible = "qcom,qcm6490-pmic-glink", "qcom,pmic-glink";
> +
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		orientation-gpios = <&tlmm 140 GPIO_ACTIVE_HIGH>;
> +
> +		connector@0 {
> +			compatible = "usb-c-connector";
> +			reg = <0>;
> +			power-role = "dual";
> +			data-role = "dual";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +
> +					pmic_glink_hs_in: endpoint {
> +						remote-endpoint = <&usb_1_dwc3_hs>;
> +					};
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +
> +					pmic_glink_ss_in: endpoint {
> +						remote-endpoint = <&redriver_usb_con_ss>;
> +					};
> +				};
> +
> +				port@2 {
> +					reg = <2>;
> +
> +					pmic_glink_sbu_in: endpoint {
> +						remote-endpoint = <&redriver_usb_con_sbu>;
> +					};
> +				};
> +			};
> +		};
> +	};
> +
> +	vph_pwr: regulator-vph-pwr {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vph_pwr";
> +		regulator-min-microvolt = <3700000>;
> +		regulator-max-microvolt = <3700000>;
> +	};
> +
> +	thermal-zones {
> +		sdm-skin-thermal {
> +			thermal-sensors = <&pmk8350_adc_tm 3>;
> +
> +			trips {
> +				active-config0 {
> +					temperature = <125000>;
> +					hysteresis = <1000>;
> +					type = "passive";
> +				};
> +			};
> +		};
> +
> +		quiet-thermal {
> +			thermal-sensors = <&pmk8350_adc_tm 1>;
> +
> +			trips {
> +				active-config0 {
> +					temperature = <125000>;
> +					hysteresis = <1000>;
> +					type = "passive";
> +				};
> +			};
> +		};
> +
> +		xo-thermal {
> +			thermal-sensors = <&pmk8350_adc_tm 0>;
> +
> +			trips {
> +				active-config0 {
> +					temperature = <125000>;
> +					hysteresis = <1000>;
> +					type = "passive";
> +				};
> +			};
> +		};
> +	};
> +
> +	vdd_ntn_0p9: regulator-vdd-ntn-0p9 {

regulator < thermal

> +		compatible = "regulator-fixed";
> +		regulator-name = "VDD_NTN_0P9";
> +		gpio = <&pm8350c_gpios 2 GPIO_ACTIVE_HIGH>;
> +		regulator-min-microvolt = <899400>;
> +		regulator-max-microvolt = <899400>;
> +		enable-active-high;
> +		pinctrl-0 = <&ntn_0p9_en>;
> +		pinctrl-names = "default";
> +		regulator-enable-ramp-delay = <4300>;
> +	};
> +
> +	vdd_ntn_1p8: regulator-vdd-ntn-1p8 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "VDD_NTN_1P8";
> +		gpio = <&pm8350c_gpios 3 GPIO_ACTIVE_HIGH>;
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		enable-active-high;
> +		pinctrl-0 = <&ntn_1p8_en>;
> +		pinctrl-names = "default";
> +		regulator-enable-ramp-delay = <10000>;
> +	};
> +};
> +

> +
> +&mdss {
> +	status = "okay";
> +};
> +
> +&mdss_dp {
> +	status = "okay";
> +};
> +
> +&mdss_dp_out {
> +	data-lanes = <0 1>;
> +	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
> +
> +	remote-endpoint = <&usb_dp_qmpphy_dp_in>;

It's already a part of kodiak.dtsi

> +};
> +

> +
> +&uart5 {
> +	status = "okay";
> +};
> +
> +&usb_1 {
> +	dr_mode = "otg";

Default, can be dropped

> +	usb-role-switch;

Please move to kodiak.dtsi

> +
> +	status = "okay";
> +};
> +
> +&usb_1_dwc3_hs {
> +	remote-endpoint = <&pmic_glink_hs_in>;
> +};
> +
> +&usb_1_dwc3_ss {
> +	remote-endpoint = <&usb_dp_qmpphy_usb_ss_in>;

It's already in kodiak.dtsi

> +};
> +
> +&usb_1_hsphy {
> +	vdda-pll-supply = <&vreg_l10c_0p88>;
> +	vdda33-supply = <&vreg_l2b_3p072>;
> +	vdda18-supply = <&vreg_l1c_1p8>;
> +
> +	status = "okay";
> +};
> +
> +&usb_1_qmpphy {
> +	vdda-phy-supply = <&vreg_l6b_1p2>;
> +	vdda-pll-supply = <&vreg_l1b_0p912>;
> +
> +	status = "okay";
> +};
> +
> +&usb_dp_qmpphy_out {
> +	remote-endpoint = <&redriver_phy_con_ss>;
> +};
> +
> +&usb_dp_qmpphy_usb_ss_in {
> +	remote-endpoint = <&usb_1_dwc3_ss>;

Already there

> +};
> +
> +&usb_dp_qmpphy_dp_in {
> +	remote-endpoint = <&mdss_dp_out>;

Already there

> +};
> +
> +&ufs_mem_hc {
> +	reset-gpios = <&tlmm 175 GPIO_ACTIVE_LOW>;
> +	vcc-supply = <&vreg_l7b_2p952>;
> +	vcc-max-microamp = <800000>;
> +	vccq-supply = <&vreg_l9b_1p2>;
> +	vccq-max-microamp = <900000>;
> +	vccq2-supply = <&vreg_l9b_1p2>;
> +	vccq2-max-microamp = <900000>;
> +
> +	status = "okay";
> +};
> +
> +&ufs_mem_phy {
> +	vdda-phy-supply = <&vreg_l10c_0p88>;
> +	vdda-pll-supply = <&vreg_l6b_1p2>;
> +
> +	status = "okay";
> +};
> +
> +&venus {
> +	status = "okay";
> +};

-- 
With best wishes
Dmitry


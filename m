Return-Path: <devicetree+bounces-178085-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BF68FABA581
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 23:47:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8B68C1B6217E
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 21:48:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 567152550BB;
	Fri, 16 May 2025 21:47:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kaOg36lR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFAE21BFE00
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 21:47:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747432071; cv=none; b=rjsAGQDogt70zkv4I6SXlamfWc6qIwmtOVDlTVEeK5YCJhUXMNkHF8tWHcpf4by3qbCzXLn3canrt2kzvdywZ+IZtLS1NfZmi3J272nZQby/fkHobc6UrhYAg1qxswoWv3zYQzqohbRAKX5e6/u5maFVIStU5zd0UQm/ngZ8ek0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747432071; c=relaxed/simple;
	bh=BAFzPZV98xDQt71YCMyBFu+beRrPIs/tAio9/s2gqbY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KqHxDhXSBou6Y+8BHM/uOmD/CwX89eA+3KlGaDondJnYoM7mwZJHzTIrsF4Czi13EFl1hD7vREA9fUFflo2JNhbIhP4tFX9QgX5JokwL+C7wJwHN8m8KQlJ4FqTmLRMZmC7wPMrr3bie1Ev7lfQgRTZF+xEJquVYcKOWVf6bVgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kaOg36lR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54GAfG6k018205
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 21:47:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0OajSPPpOxUILFDFYO4NPFdv
	qTv3CqH8OYWmd+Aboug=; b=kaOg36lRfVw6CdtiNwMsMkB8MqCV/CwvyOOQ4SBM
	vb9B0Ve53ps2zhDnOL3b6mNm+YIZKuTz/7deW+V3/Y75R1FoWqrSGi7OY/rwnb5/
	ct+rKq+IX4PKH7VT03G8gom9w3NGWd8yxqegsA5dNC5YwuWdemWJYv5sDfGfhNYo
	fG/8cRreKxhBHmgKVjtf0sxUdHkD1W0dCX2E40PL059Zku/xGclj2afIeIXH4XZH
	mt6ZT44z7Cc4cxqIlkmo43w9n5i2+e2+ZcmgYcVDad7XK0OZOB6oZb2tUnW4RiUj
	hNJh+DOEpN/g2qnZy41WliYxREN97s2BLUMf5SObRTmfMQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcnu594-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 21:47:48 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6f6ee43c4a6so67799766d6.0
        for <devicetree@vger.kernel.org>; Fri, 16 May 2025 14:47:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747432068; x=1748036868;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0OajSPPpOxUILFDFYO4NPFdvqTv3CqH8OYWmd+Aboug=;
        b=VslYX+NbSWjaExCsEehh1FMSGtQPtZDUYt7WAZEC1ECgRP0c75Mxubx0ZjojzJtHm4
         RrH2CeYCvBf0jlZO0q17ox5+mgDTFoFeqWuQtzN49ADlCSFlDi4Jj5L47owxDU9sL7ok
         Rayy1pz9nmKijh3BhIiuBH04/2V7sud+1Imn7gf3jLQgYexsBNjsmPsjmQIgwgq3m3/5
         ezkh8v0ldvmYB0XpgBRJjIK6LYZT532aHRgP3TkD/QFIxoYhPq47XQw0rfGYN4jaEPPd
         I7/1F4Vcneedb7/x+jV2Uw2aBR5Mux9bwNqXLOM4mmFEicENb4Dyi5NXewwJ0zOIjAXI
         2Llw==
X-Forwarded-Encrypted: i=1; AJvYcCXKe7p4zJwYodypmDr1uatbtcKsOMNmfHTeXg9HErwQUPgSSGe+e7fhQnBgf8zi9Snd99sO5uBKsU2U@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7D0ZLTKb08yDGR/Ztamfo2rhsXrxDPEh9NUTDT4yZiZDL24fQ
	kaSBqgDQDGxcNvwmBPzM52W95Ge637lWJdnsq5D35FI33wSy3OvDkzPVHEoCmZoB4oNRMHc5Mg5
	iOQ/dca0EnZvhsTg0hkznFMyYlbVOo/wOLGsjINcRKABmc3xPRYO0NAmJGsWdiwm1
X-Gm-Gg: ASbGncvKoXo68feXftUL8dgted7XvWII02CDoF8xEP8QG3frMfjtY5FfrtmuYTYxkBU
	m/D++VhDtecj4Qwx3ITmjsZ7l7DnjcrdPRS+vDLx9xBTLqFS7zEBjYEclKmLgM/oqOh6C1gZTHV
	PZXBTdOl1pBG9Ps0v6/mziT+hKm5cOWAEKswK1kZF69kSXfwCPl8HjmvCOe/x/QatA+gJvTY4eH
	7oTi9uEV7HGoE8tbZJRcMGZMwsS/79D1iRZ9CCTPzWQKzS6Z++g0yl3P5n8IAwFCY3lXkBv81HN
	qlR8SoNTaVdEPt6cSDQrB9MLJvFCpXeAmnZXqvdtPkycZ9tc1oL1X97A7V1ikZ9wnsTpYLrj3qc
	=
X-Received: by 2002:a05:6214:482:b0:6f2:c88a:50c5 with SMTP id 6a1803df08f44-6f8b2d0d13dmr81424486d6.32.1747432067717;
        Fri, 16 May 2025 14:47:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHJrEXnItRNikVKAyHumZUU7oRokiFgdcrstn9PG+iargY+mGDuWUUl+iPygpqqLWHlk2O54w==
X-Received: by 2002:a05:6214:482:b0:6f2:c88a:50c5 with SMTP id 6a1803df08f44-6f8b2d0d13dmr81423996d6.32.1747432067254;
        Fri, 16 May 2025 14:47:47 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e70406edsm602957e87.258.2025.05.16.14.47.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 May 2025 14:47:46 -0700 (PDT)
Date: Sat, 17 May 2025 00:47:44 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ling Xu <quic_lxu5@quicinc.com>
Cc: cros-qcom-dts-watchers@chromium.org, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ekansh.gupta@oss.qualcomm.com
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: sc7280: Add memory region for
 audiopd
Message-ID: <uzyxagnmxz5tsjy32mfro2alwdpcq5kybwzcbsysul7u6adgdf@x7katw7eme6u>
References: <20250516110029.1637270-1-quic_lxu5@quicinc.com>
 <20250516110029.1637270-2-quic_lxu5@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250516110029.1637270-2-quic_lxu5@quicinc.com>
X-Proofpoint-ORIG-GUID: wlt1tCsIODd-wFSN-nC14VSNwWzqgoCB
X-Authority-Analysis: v=2.4 cv=aIbwqa9m c=1 sm=1 tr=0 ts=6827b284 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=FeQ1H5Jyfar7eTo_IjQA:9
 a=EghKYM905LUPLqyX:21 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: wlt1tCsIODd-wFSN-nC14VSNwWzqgoCB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE2MDIxMyBTYWx0ZWRfX7nKlykD4AWVg
 O5UTbyZYPPV9Q+CHgQgga224VhRKQAgGsOCQi1Urf4MW3fS6/eq3KBZquUQw7EKxX7xAHyaGZn7
 dULUnJwwLtZLuVhKCcF6s5Lh1wzRDrvz1HpF94outRhlDe0db6gooZ1dth/kOJRK443ZurqLFjX
 QExcNEJyJxix8htIhHzJhpO2bIASX2YhkqXb+JKQDb6Fvyz86Aj0ifHWnhalBOdvurwZK2DHgqZ
 04ZyWnqLviKOI/tsFP20jueMOk4+PX/NO6tBHWSJh1JIl0iGIIZ1iKtz3ac80bVxQsT0p/hK5Lf
 bxSjotfadfrKiMA5EIiUipNSP2cg4jc2vCFEX7TjLU3W1rGzOHSjdv46WAa3XNKC1TNoGJkJQhp
 VGgnABNQitC+d+o692RKHRgAPMMhgg2wsQa9tF0SYDsmS6UJ0dGF37XL1ETN0hQNwSEWXz1t
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-16_07,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxlogscore=690 malwarescore=0 bulkscore=0 impostorscore=0
 clxscore=1015 phishscore=0 suspectscore=0 mlxscore=0 spamscore=0
 lowpriorityscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505160213

On Fri, May 16, 2025 at 04:30:27PM +0530, Ling Xu wrote:
> Add reserved memory region and VMIDs for audio PD dynamic loading and
> remote heap memory requirements.

Why? Was it not working without this heap?

> 
> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 8e86d75cc6b4..d9af79ff8c4e 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -188,6 +188,14 @@ rmtfs_mem: rmtfs@9c900000 {
>  			qcom,client-id = <1>;
>  			qcom,vmid = <QCOM_SCM_VMID_MSS_MSA>;
>  		};
> +
> +		adsp_rpc_remote_heap_mem: adsp-rpc-remote-heap {
> +			compatible = "shared-dma-pool";
> +			size = <0x0 0x800000>;
> +			alignment = <0x0 0x100000>;
> +			alloc-ranges = <0x0 0x80000000 0x0 0x40000000>;
> +			no-map;
> +		};
>  	};
>  
>  	cpus {
> @@ -3863,6 +3871,9 @@ fastrpc {
>  					qcom,glink-channels = "fastrpcglink-apps-dsp";
>  					label = "adsp";
>  					qcom,non-secure-domain;
> +					memory-region = <&adsp_rpc_remote_heap_mem>;
> +					qcom,vmids = <QCOM_SCM_VMID_LPASS>,
> +							  <QCOM_SCM_VMID_ADSP_HEAP>;

Please align '<' vertically.

>  					#address-cells = <1>;
>  					#size-cells = <0>;
>  
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry


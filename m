Return-Path: <devicetree+bounces-256895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C59BD3AAC3
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 14:53:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AA5E23011EDB
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 13:53:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D85436D4FD;
	Mon, 19 Jan 2026 13:53:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DTM7aZ7n";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aqyp2duZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA12F36CE0E
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 13:53:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768830827; cv=none; b=kTB137QMSQGGHYqBPO9GxJbq1lPWOnR1nMSmH3LBHL3ErD5pCcqGNb268gJF1pbWJsbESua6cABgmiGdzcbn9/d9RyyH70CrlO7Co/kTMGAZ8OFERJZ16y768YLTMZvs8oAtvzmK5jxoU6RZxd7ZYracLnqAfZPYVyraruZkiyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768830827; c=relaxed/simple;
	bh=ShQXjAQSRW4TImY3jQkauw2XPRRphVibZy66yqk6oMo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XeMRHqIWRjMrYj2GT6MhLo3K0KiraGq6FVm9DPD1MFBxkh3KJiC3NyobRgPO5JhWkrQNm9Rsnn8sCixh9oqbUU6jBxF10PlMcw7KdhXsuokV52l7mZ3ke4PGVCnNcmMuQIkGL5XOTTzw89ngQC/ooF+3mN1WckUMFkJrx/EDyKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DTM7aZ7n; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aqyp2duZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60J9kJON774039
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 13:53:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	96KkDm/OsAmb2OEyU3TnTGZ2oetO25eIubHpM2+yfIM=; b=DTM7aZ7n+AjLMrCr
	APrjuUjJxMvYud6SrUbwISN8F7eZToLjWIIGDlgAWWuhc6A/yQVufjhcElSG/JVG
	tRlC05DXCkzsGQo0dcaYku0XPV1xoHN4i2Hz2Xit4wSVrIqr8l41yM6yUrFjIrNE
	X+iq6ernDYlU8tlBuFTlrJrfMVTFl+ckV6zTGdbL1oZHbcBIaioeA97ilOpFlslz
	nJ5ZvdCw1sWmifiHnysB83tPcb/ydshrDn8y3qgrOlg8glh9kUBps0/3fUVuCAuq
	887LKpuobQNVQa2neXcSyXeGCHSY7h1V2tTstNpSo143/c2FggNTl+e4nJkzp5s4
	1B3BVg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsj9a8q0d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 13:53:44 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c52d47dfceso83157785a.3
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 05:53:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768830823; x=1769435623; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=96KkDm/OsAmb2OEyU3TnTGZ2oetO25eIubHpM2+yfIM=;
        b=aqyp2duZWyJI4n93EfXxu0rkw6+Hqa8DDTVaQ8M8txY9xk15IZVhBl5KFB2qrp9AFK
         Kz2JXJ9TWrACFCl2hvbFPgJJmYOP2klUgqc2C4Ch5DVGKDtWboJAS3Lw7UTwOfFyvrzb
         gHOlQXxUhLDs1yiO6VDHDTEjnp+St16e1oP09YH0Rkx/JpAOJCuAnlN+6DJ+9I6EP5P3
         smxhYMoBKKhRXvGKRtq0vzYK30BrbTk0/wHsqgGgpEG0owukNSaKYsHBX2vUPIvxjt6J
         Yrd22zv0JjVFP58/7tepFpGLxaqWSlZKu+xClGlJfIw8+zB5/11XIrqSNHh8nnuCsjHE
         pusw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768830823; x=1769435623;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=96KkDm/OsAmb2OEyU3TnTGZ2oetO25eIubHpM2+yfIM=;
        b=GQHJAmQy0uiTi95J4u0lfsEbEUgFdWsANDNLmw8r2WeyAEGwZp4/4vZvLOIJO58Y83
         6rFPIhiDKB5ao1GT1jAax56Nd1U0tbj0Zxr1CvpADz5dpyGmpDbV338ht2rUZs158tKZ
         jTPjqAdXR9Ky6OQlszEBfOm58spZKNaomJ5TIUbKwQX2tRf4rkTukf+95wRgVRLaxfgE
         UxvXGuyGH261PCPUsXLuFE4kH0RT+W8HlEVo4223Smr5J2+l7pDI1swgGAPaPqUpNwdw
         8JR5IEZ5YLpbmyC9tnDAj5SpF7cw+m7LvCL3zMXHgV/jiYeEzV+z2sCcG+uOtcxX787u
         LsYA==
X-Forwarded-Encrypted: i=1; AJvYcCU4ifsXfWoxLqKy593axajHom6svZJSfLSMiKa9xmBup2mt5+GE+GF4gFM504je1wteEAq+4te6zni9@vger.kernel.org
X-Gm-Message-State: AOJu0YxMgmjymcyCUDYJj38DX0NNZteWm3+H/KjaZ6/MCbUw1CHKycNo
	tydzp9z85/Enr9HuLliFMwGMf1gk/ndvV49jWx+y5f1pJkpRu3+wPZh3mEi/wqfWwpOmsBcr/q0
	/oQKvmil/YxF1w6lPTKNmVFwwnH3whtxLdrFLvBhTkWn3OnyKiC1f6o12vh5+g7+2
X-Gm-Gg: AY/fxX6wdalGen3b/BtbNIpcjxWLiB0cthhKl9tLpTwxr/mSeeGEnLyhDko+xVfL+/N
	TZ+84SAriF4hl+4XQHTN/6KmLo8rQUvXiNz1gVWa8U5xlogJppNjKORoAKwSGevbZk0hNGykVKz
	6btC6CiVurAfqPHsLrwxXmo/Qg+fknlTU7yHZEo7e9G6PsZWRnhkZ25r+DmQcVN3T+JZrVxF+RM
	DefcPGRgCwp5tggBl4+0XHYeYQ7mKN4X+fCLSH1sX75xj30fKIc8SLHrwNSsnMGwypzazeLs7nj
	X94F2DZsaGTPyi7TrUDXCvuJ6Zx151a2aDivK0VJZ6H7MDYlRfbfYMd4w7Itd7KEBeBsQLO2w/E
	eBI8JtCUJR4fg/OMf0gTrqFnkFfTfMAt2XAtlv3MWL6EzuFW+pVM+VvE2HaEAAmm8/Bw=
X-Received: by 2002:a05:620a:1911:b0:8a3:d644:6930 with SMTP id af79cd13be357-8c6a6716bedmr1231190285a.5.1768830823014;
        Mon, 19 Jan 2026 05:53:43 -0800 (PST)
X-Received: by 2002:a05:620a:1911:b0:8a3:d644:6930 with SMTP id af79cd13be357-8c6a6716bedmr1231187785a.5.1768830822528;
        Mon, 19 Jan 2026 05:53:42 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-654533cc543sm10171605a12.20.2026.01.19.05.53.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 05:53:42 -0800 (PST)
Message-ID: <060a29a8-6fe0-4981-9f1f-398eac8adbd0@oss.qualcomm.com>
Date: Mon, 19 Jan 2026 14:53:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/4] arm64: dts: qcom: Add base PURWA-IOT-EVK board
To: YijieYang <yijie.yang@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20260116-purwa-v4-0-89b2adae9f09@oss.qualcomm.com>
 <20260116104136.2922032-4-yijie.yang@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260116104136.2922032-4-yijie.yang@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: RrVyxulYPrRwiLFSWEfy56CirLoI_4Ig
X-Authority-Analysis: v=2.4 cv=N40k1m9B c=1 sm=1 tr=0 ts=696e3768 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Hyk3WD5DSplu-n_fqRAA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDExNiBTYWx0ZWRfX2z2gL/3AwGsg
 c6x0lnTYK87o0rMIIh1IRNR1KE+RndnQVzPsqn9qwUTWnbtHeqs1XNlVevs/1gLT1amXxhahfx8
 SlpWu/KFzJZjUuvO+0hjA3IBm+m6TLbCT5ebzhTrxFmJH1Rx7ao3KxUzkXmsNpjKrZt+x36Zw7Y
 FycgWSOCNJxOFPXI1lj87aG4ZZXpkECfBz+3AkiJaKLDMLPIEy3h2UWLQF3FS5WAUNipVyJJVYS
 +HPDomfVPa6VeLNJuewbTUjJ7DtZkL6Skjtb5AuCh62+aVgB0SyOgfYs9NAo7mshLMPusRA4Dbv
 vZbLlOHL1msjEJ4sdVFFPatzaRXYXm5xhU7j7UeRACtXz3MlUvVW8zQH+qzgGcBfi31pJlfY2jg
 7i3Tpd0s1jOQ9oD7YgLXt8h4O5KQc/+4KIe5lqS1BK0q/X0yAH3Vr/wg0M2sC7aeITKHz0Dywj9
 O6shl7xNkR04+FvZopQ==
X-Proofpoint-GUID: RrVyxulYPrRwiLFSWEfy56CirLoI_4Ig
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_03,2026-01-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 impostorscore=0 malwarescore=0 adultscore=0
 spamscore=0 suspectscore=0 lowpriorityscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190116

On 1/16/26 11:41 AM, YijieYang wrote:
> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
> 
> The PURWA-IOT-EVK is an evaluation platform for IoT products, composed of
> the Purwa IoT SoM and a carrier board. Together, they form a complete
> embedded system capable of booting to UART.
> 
> PURWA-IOT-EVK uses the PS8833 as a retimer for USB0, unlike HAMOA-IOT-EVK.
> Meanwhile, USB0 bypasses the SBU selector FSUSB42.
> 
> Make the following peripherals on the carrier board enabled:
> - UART
> - On-board regulators
> - USB Type-C mux
> - Pinctrl
> - Embedded USB (EUSB) repeaters
> - NVMe
> - pmic-glink
> - USB DisplayPorts
> - Bluetooth
> - WLAN
> - Audio
> - PCIe ports for PCIe3 through PCIe6a
> - TPM
> 
> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
> ---

[...]


> +&spi11 {
> +	status = "okay";
> +
> +	tpm@0 {
> +		compatible = "st,st33htpm-spi", "tcg,tpm_tis-spi";
> +		reg = <0>;
> +		spi-max-frequency = <20000000>;
> +	};
> +};
> +
>  &smb2360_0 {
>  	status = "okay";
>  };
> @@ -1171,16 +1217,6 @@ &smb2360_2_eusb2_repeater {
>  	vdd3-supply = <&vreg_l8b_3p0>;
>  };
>  
> -&spi11 {
> -	status = "okay";
> -
> -	tpm@0 {
> -		compatible = "st,st33htpm-spi", "tcg,tpm_tis-spi";
> -		reg = <0>;
> -		spi-max-frequency = <20000000>;
> -	};
> -};

Not sure if anyone commented on this already, please keep it where
it was (it was properly sorted in the original file), then we're just
left with the USB changes

Konrad


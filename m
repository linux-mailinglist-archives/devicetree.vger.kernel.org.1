Return-Path: <devicetree+bounces-242777-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C01C8E914
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 14:48:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B59CB34EB90
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 13:48:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B71BA221F06;
	Thu, 27 Nov 2025 13:47:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZfbylVXI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iXzbhPOn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECBD78635D
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 13:47:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764251262; cv=none; b=FdK+/v+dCkbMuEW3PKLxh+3cdEoui3k++MxCn63Aa/Y/J+EF6g0FS2IEEu2rG567K+3wulaqGBhf4iYquLhNyws4aluDMA5U430DUQGzXQ0VUhFTi8ZZOLAPtXpILMvwkkURvxfstON8dSk+jR+WEFU5TucEaly4YCZ5iCSnN60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764251262; c=relaxed/simple;
	bh=FQVqutWdqyP7Nl9TP13LYUyfchM2z7U84aHfdwPoTEs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YqY9vZCK6UIhr09CBaLzr1BTb3V5uuu5AJZzE2lD/+XZrO2BS99AXJJZqammUi8tAqDDzmE0Yh6nhBPvp+pbVYTRUP0QJxNYVMhTdrwUrGLhlaumy8jEgma0DTycPcQ6vZTqI8lMfwGgAoMjc0mtrl6FD4QyMnsabFr/0QJMj44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZfbylVXI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iXzbhPOn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ARA3Z9O848490
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 13:47:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Mv2I3k3r/RnePcRZs9VXFrqRAy47C1akTnpCGieEj3I=; b=ZfbylVXILrr9mu4Y
	RCBvSrsrHnrAGoFZRPnbSBVsyJfDtV8YhsDzaTD49U8ptDAVEIjI1yafKw6G71Ki
	vlHsHoAkvi80Tih16WojfC7UDKvec2Qs6ZuyXcvgytqOX1WV5Mlv7jK/8rLYpMSt
	eEXiBo8VSBq/WiFVMj6XuD1PGZD0P0a0SoQOD8oboTv1LMkQ6OzLhxQIkePVUwR0
	yjpcHsnjFiyo3gLLmOM+FqQfGQ8uJEgGOzJVwZtSeEYU3Gt0uQYGRV295Gcsiw3c
	DN6RuGphbS+ZklGDK/xxfl+z6QmoH2BeVXorG2yCV7yYOiEnbDz7pQqxPEf9HGcZ
	8L0j7Q==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4apmjd8hy7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 13:47:40 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee07f794fcso1535781cf.2
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 05:47:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764251259; x=1764856059; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Mv2I3k3r/RnePcRZs9VXFrqRAy47C1akTnpCGieEj3I=;
        b=iXzbhPOnZdZ8hTtN/rPlazkQ4YYwAZ+xzawB6Ss+Q2a3Syu6dZbcroNnzWDpA/ie/O
         sSpu8RPkhuEt1b+SjSfangg+myOSvFfq1ySkF/CG4KDWOCxj62p7kbGdkv/ixEkNvjcy
         64xu6Cdfhs59XOKABSVTKHoCO8YunYlPhgW5BQBVHe2l6luxIXo6rsYf/9vI15t5MFZz
         3rJ6yR2l5yKh35bdBQ8ndsomXUK7JGIYPZ0JVnEfHShY25evrYL3EahXEWG8qa0CJEeD
         7en+4fyFP3nXpi3QDwQDcLKNAWYAdUs+O5uEi7QqUWrmOjXtXwoKaV/ZhkXm7oqMqvfF
         myww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764251259; x=1764856059;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Mv2I3k3r/RnePcRZs9VXFrqRAy47C1akTnpCGieEj3I=;
        b=PkSWUmxs2XspJRAVAKODWyCdn9jio9ueb67v0zNtcwtd7V84OQJzfamqbU7NG0t72/
         jANgDt+5v7sndSRkjhKfTZZGjhC9UO1mDfb2GorxzV7i3kOsxmZ8u/L9RFwCTrvOcWFS
         poe6aeehpT6mEM/kmzvk4WfZlpND6FXl8mbHfSHEFYdAY7kQ2gzGziQBiRF8zLLimUO4
         YkSnSN/BI2wDw2QrlZc4lrUS+vQJ46b0vq6lukb5CbzvweCO7gmnVUhk5BRykmx135qO
         6/Ecbq2R6Jx4dCdeeZF4XaInBcrUuOlSnmqxCTa9lv8HFAr3KnF3lIGpj1ZLmsNKz/98
         nrhA==
X-Forwarded-Encrypted: i=1; AJvYcCV36Q22DR52GSBe1QQURM5Su+9/LOnOZqezyzC1vNrAO7RrAcS7Kngcojwkhjs6cUpe+KlRR3aZlM1U@vger.kernel.org
X-Gm-Message-State: AOJu0YzaJzUT/lkDHtZg/O/CH1v0d6MVqmWMgl1Zu6xWH4Rxl5qi+Cmx
	arsGazs9tVpImupiJ2sQRPoxN8Pa1RxWrREYgDaIXiKTbt1yNDpwWk0pKBRplN24tXLXElbbgji
	UI9CRBZj/kGCA7QrCh5vPR/sTrYXGffnMTAh+i+I5/pdJidG4cuuN6yWY8QTLIHo/
X-Gm-Gg: ASbGnct0fiEjhA78dOR7IxDnb1X04RisDK/3XVNBEBnXZQXmXy5UUvxQtxnA7ItVgLu
	gNIRYSaor9X8vIp1D9vUN1bz5IOebixuF+11Vp2Y9Ob51/UEbiuu/uaLeo40wg0+cNTtpHowjMb
	B5TTkrqMtrOYx8tyt+034BTWSQvQtk6l3mVdNK82N19hw9CnrBHctnaHjA6fgjNOwJF7sBJs9Gx
	6CgmwraRCuxgoDrU+62mXDHrY3dA3dkg3fHdlXpVypwunjqTMiA+d03sqtHSqwvlEsToDEYbR6G
	M9TZ1JPV60bJP1zAQbO4TVLD3SgJYEDqNLDPm9P1JtUddd6a3tQORkz350smeMJxFHtU+6SPVYA
	LnixGH8yIuLt/ldctQ+VjeelNLgxFzIWmPpAiU/9/A3CT5SZt2kTf27qSqramWfi60NA=
X-Received: by 2002:ac8:5a46:0:b0:4e8:a54d:cce8 with SMTP id d75a77b69052e-4ee5885ba39mr230599091cf.4.1764251259173;
        Thu, 27 Nov 2025 05:47:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG6iw/NbbB/BkfWmCjcxa2Agkt11et0h3eJ2YzX65775JcGnaWJ83sw779WcdrIChy1AMLznQ==
X-Received: by 2002:ac8:5a46:0:b0:4e8:a54d:cce8 with SMTP id d75a77b69052e-4ee5885ba39mr230598701cf.4.1764251258519;
        Thu, 27 Nov 2025 05:47:38 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f51a9819sm178881466b.25.2025.11.27.05.47.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Nov 2025 05:47:38 -0800 (PST)
Message-ID: <3b609409-e19f-4685-848d-807a4e840ad8@oss.qualcomm.com>
Date: Thu, 27 Nov 2025 14:47:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] arm64: dts: qcom: sm8x50: Enable UHS-I SDR50 and
 SDR104 SD card modes
To: Val Packett <val@packett.cool>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring
 <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20251126012043.3764567-1-vladimir.zapolskiy@linaro.org>
 <bdf3f54d-a223-4eff-aa71-0d74a83ef46d@packett.cool>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <bdf3f54d-a223-4eff-aa71-0d74a83ef46d@packett.cool>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: qQCXsyl6vvedJlk8AmPMZfwkhrVMy0qi
X-Proofpoint-ORIG-GUID: qQCXsyl6vvedJlk8AmPMZfwkhrVMy0qi
X-Authority-Analysis: v=2.4 cv=OPcqHCaB c=1 sm=1 tr=0 ts=6928567c cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=NZNovLmTKhFXNInCTM4A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI3MDEwMiBTYWx0ZWRfXwNUG+8DIA2d2
 ZDLl/cqUhFAe/MEjniO+P8TwUk2UMJYP+G+rkvZ/Xh7xN+oenZzHDS+SsCn1cpazXLjYaw8Elr2
 M3d+AS4jYdQekLsTmWDCYClgVIH3euYRzbg/4xSGECWgun5EpR69uXGAygoeGBpydGoK7+29+FX
 rx5RakGY6bgMsd4cQCnF76ieA3eM9aPktLV3EUAJMB9PlM/t7wWvs2DWFgThiGCVygjI3aZ+HaW
 16A1h4AWkfaT4E97ye80nuGamRNLZPmzZiUr3hcosceuX1I2p4oq+mEe1TCPJm5xOlPnR3z2YWW
 fj2K0OHYsEsZYNzEEVURwmSECw+HgQ65GptvBkHQBpIT5Y/aE7wwRnhCtb3SPFeM3rTOj344RBW
 501bbf5pRuuiLhcQ6+Rk8e7aYfl+yg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-27_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0 clxscore=1015
 spamscore=0 malwarescore=0 phishscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511270102

On 11/26/25 5:14 PM, Val Packett wrote:
> Hi,
> 
> On 11/25/25 10:20 PM, Vladimir Zapolskiy wrote:
>> The reported problem of some non-working UHS-I speed modes on SM8450
>> originates in commit 0a631a36f724 ("arm64: dts: qcom: Add device tree
>> for Sony Xperia 1 IV"), and then it was spread to all SM8450 powered
>> platforms by commit 9d561dc4e5cc ("arm64: dts: qcom: sm8450: disable
>> SDHCI SDR104/SDR50 on all boards").
>>
>> The tests show that the rootcause of the problem was related to an
>> overclocking of SD cards, and it's fixed later on by commit a27ac3806b0a
>> ("clk: qcom: gcc-sm8450: Use floor ops for SDCC RCGs").
>>
>> Due to a missed setting of an appropriate SDCC clock operations in
>> platform GCC driver the workaround of dropping SD card speeds from UHS-I
>> to high speed was spread to SM8550 and SM8650 platforms, and since
>> the fixes in the clock controller drivers are ready [1], it should be
>> safe to remove the speed mode restrictions from SM8450, SM8550 and
>> SM8650 platforms.
>> [..]
> 
> I see you have tested with dd on the raw block device, but have you tested hotplugging SD cards that have partition tables and filesystems on them?
> 
> We have this kind of issue on Hamoa where we get I/O errors early, right after the card is inserted and the partition table / filesystem headers are being read:
> 
> [  714.057106] mmc0: new UHS-I speed SDR104 SDXC card at address 0001
> [  714.060567] mmcblk0: mmc0:0001 EC2QT 59.6 GiB
> [  714.503873] I/O error, dev mmcblk0, sector 0 op 0x0:(READ) flags 0x0 phys_seg 1 prio class 2
> [  714.505660] Buffer I/O error on dev mmcblk0, logical block 0, async page read
> [  714.513632] I/O error, dev mmcblk0, sector 0 op 0x0:(READ) flags 0x0 phys_seg 1 prio class 2
> [  714.516469] Buffer I/O error on dev mmcblk0, logical block 0, async page read
> [  714.516512]  mmcblk0: unable to read partition table

Before we start debugging, could you please confirm it's using the internal
(&sdhc_2) MMC controller, and not one connected over PCIe, like it's the
case on the Surface Laptop?

Are the regulators supplying vmmc and vqmmc in high power mode?

Konrad


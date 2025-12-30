Return-Path: <devicetree+bounces-250452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4A6CE91F0
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 10:02:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 089413017F14
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 08:58:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 986292FFF88;
	Tue, 30 Dec 2025 08:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZQfeF0np";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BLAFId/b"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243AE212FB9
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 08:58:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767085129; cv=none; b=IX0No5ZY1ilGrfYtv5JDMCKAI9EyMYv3MQSlxp3p4PqEG4dXhwfwYD4zztxaD0FxF9NDn91VEgNhFSHzytyasF+4vB1zST45RMs1LWEh5Hv5E7kCHsymUcPU+n39Lf+UW1hn0LTzZf9p8MmR4BY/s9e63RZKNacZt+pwfzkEaEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767085129; c=relaxed/simple;
	bh=BhHOI7iI62+sqCnJnry0iDrBw02bx1UkNL8hPMV48oA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a0F6099/AZ8kJVoTxwXeSpX3Lr3wjSEvp3s5exgYTaonMabPoYmU5h0kkFt+T8gwDmPewPc43IuWSwfww0xph4f866swNAuoXThIXh3yRC/8lPDaKGZeWTXyIIIqpxYqXGIQ1aJil0LXsSdDd734Er2CGdRBcYO8dPvgahuxkK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZQfeF0np; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BLAFId/b; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTKeHsi2379791
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 08:58:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZzRRO2mFcfrDlhW44h0g8PE60DyJAiXEqmg+unBXdow=; b=ZQfeF0npaiqCdEA+
	J/qlNaUYemTyvc6X+1TVFQ3uN2Kl+G7GZnITM5F5kSYh0gUhbA97xclccUTQEn39
	BH5rZvr1A2CiQmv/Yq/26LzlYVhbJf91zpVsHX0aGIffDD69nUllyxNkgb+25iJH
	S3ih8hZQluM8fIYQuxgpHsxMBk6qyyf/Byigu2w3x/zcG6nYMySXI1hAVqye8FZR
	CdE9B8wdl+916/ANniB2yuyDnxe0GwScJe53tncGsepvMXsd3okZAvZ5n6frWQJH
	5hIrmyACjHTUGzVoPd2+PtRugFzoJw+Ea9Sp0qwPVIa0h+mqCDVV7WsAXQm19RZ/
	//zPzw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc06gser3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 08:58:46 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7ba92341f38so10794425b3a.0
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 00:58:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767085125; x=1767689925; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZzRRO2mFcfrDlhW44h0g8PE60DyJAiXEqmg+unBXdow=;
        b=BLAFId/bQBCUMS+rk/4rgT5ksnSoJ1epfkgN7MzqEqdc82qaYiDpbjjbt8jTmzMo9W
         cCOM/zGALqGkuZVkAZ6gATesEdMejJo0wrFh9IyI59ymuRfR8vpb4bE6u6mO4RcgyPON
         CzKTC3YMq+6CT0+U4aBKQRAAF5AFnjNlv9s6qKk8kqLLZvujMBH+z9/29pozWEDSeVS6
         tS+k1l56fRUzCTA738BQy93sTPLPoBAxv5Sdves3byMsI9Zoi4pwQpejLz/hDWuVJ7B2
         I/BsTG/Q1fluH+E2N4vm9fMS22dfJWQ8BiBmzZjJg06i3zAZmadPfKEjaZqPddYlLkXC
         sZ5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767085125; x=1767689925;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZzRRO2mFcfrDlhW44h0g8PE60DyJAiXEqmg+unBXdow=;
        b=M7pBKOYXoA+aakiG4UohLEf4f1fF2AqUAksp7kQmIQwUksZ7CCRBPQNo+ZPnY5V3S4
         34cgA2/Q1KADv+EV2fIvmOcNckqKkqlaGNGYEDifa3j74aA39fdsOGklN5tgRZgg9+5M
         xP2dBzoCHBw67qrz0n08v4UC0uWmo86rbxj8Ls2D9L3xrVdQFskgRfl4PYahvFJ+q0Sd
         EDSXRqhRsvzmoyNvNAaXoNJOkwxzB96hIYzSzplUwiDpPv+xtYV3VARQNRZxCfJumlxX
         dHlfNs+Dpph0nCSpYFhxUx0gWS5M9lKOkk2SLTqWOvdvkxYIkH2i8imFPSUWQuyb7+qh
         WNWw==
X-Forwarded-Encrypted: i=1; AJvYcCVkFQdsRywVsa3z9Hbh22VEVrOoNDvNKF7YtLRNq11aK6KsBQc6KqGUiVjKwV+8LDo7bpjpi56pZ4kt@vger.kernel.org
X-Gm-Message-State: AOJu0YwPZChU2j9LOZ3+MVAFnjOBo9h1v/HUtgM9lC/Qs6XrqGp4ZCmK
	zGPpgNlhmFOrQa8Xc53K9FBQupSeph76gdv7pWAfkrRoPlkWej+GRK+EjjJyNnks9GCzVZM3QHp
	2aAFOIjv+yaa3TMKTYnDyR4/oh/rSF55o8pEPdnnSqCUW1/9ZaG9ei3a1PsdrCHz3
X-Gm-Gg: AY/fxX4IcL7iqb+MbOo7+YLwo1J8x35FauuIxscHE6DYVyoWFWlfxHD4mlPBqUEwwJD
	FX/CfArNCjw9j3JUvrp6h/Xt2WyCYolp2X8mwQZ9PikpcMKP3UMDJgSO+bntoMeo+7dShZjgTiz
	GIfEb7WiWcHf/d9C6TBcReFZO236dhF3SPK/JgwEJXOKG3PYnVQYSYCoLWugSSMKCNHzCPQC32a
	NjMQG3n7S4fiaCkQU5NiiEH+MlEitMKy/vb0wv6hnrU2pP8uS2dGYsTSJD1yhVhDSiDXoDoYguE
	K+liIW1RAcHyooQjEUw61NAw0S7oI+7k2XOKVmAgHgGVyz64pScsY/iakKAr3KpQ4Ek9Eh1Feg/
	V6uy3wGGqF1Gb8bmVyoPB1sbG+APSJtoXuo2rpMjor7u11e3/ZJM=
X-Received: by 2002:a05:6a00:2a0c:b0:7f7:6229:fbb5 with SMTP id d2e1a72fcca58-7ff655aea1fmr32215699b3a.25.1767085125519;
        Tue, 30 Dec 2025 00:58:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGa7RsFKxyM4k21LTeY+dre+G2lOAepGj4bj7KAmTkd98cHy7Z6N3u51V1b+McTti/W7cVjig==
X-Received: by 2002:a05:6a00:2a0c:b0:7f7:6229:fbb5 with SMTP id d2e1a72fcca58-7ff655aea1fmr32215664b3a.25.1767085124989;
        Tue, 30 Dec 2025 00:58:44 -0800 (PST)
Received: from [10.217.216.105] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e88cd71sm31685097b3a.64.2025.12.30.00.58.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Dec 2025 00:58:44 -0800 (PST)
Message-ID: <a64f088b-8509-40cc-9f01-23c8b87a8f3c@oss.qualcomm.com>
Date: Tue, 30 Dec 2025 14:28:38 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 4/4] arm64: dts: qcom: hamoa-iot-evk: Enable UFS
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, vkoul@kernel.org,
        neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, martin.petersen@oracle.com, andersson@kernel.org,
        konradybcio@kernel.org, taniya.das@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
References: <20251229060642.2807165-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251229060642.2807165-5-pradeep.pragallapati@oss.qualcomm.com>
 <a33f5b15-d574-47c7-985d-f181c4784b98@oss.qualcomm.com>
Content-Language: en-US
From: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>
In-Reply-To: <a33f5b15-d574-47c7-985d-f181c4784b98@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: GtK3TYX2MCZTnuE9SEMujhS-yVeKhWWk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDA4MCBTYWx0ZWRfX2eGPUe1dYPAP
 Q94TsIYvKwDdZ2dtm0nZ+45cCiza21cdp4Y8wb/Cb9476rQiylRAZXnpSqOCRkrfZzWTSLP8POY
 91X9xbQCf8McqKZvRJ9mVNdppMmfStR0SeH9KK3AyOcyNhOYsOrCLFweAtbDc/AJ6xNojidytd7
 9PclldqHy2EdlKffJLGRcWdlcojdvho1751HTgKA8wmK3mfXff/6M+uCc217autVlegIAZp1/U5
 oUCB5Yzu1H37Md1OAbCFWbthUpqdnMdlDHr6CAraVBSD5x8FEmXHTteog7ZSBRooSGtu0YD7XBV
 eKYmTSiN6VfUhXjiUh23OBBigjwywWltrO+n+AZLgEJR4AJhhgrvcFmJnGAMohbhgO/nHnD6I3D
 23Xw8x2EHnrwDfG3RtP7958VGlw+SgqyfRUrF/yfTiSlEx6xIwCRWKaAleAumDa+bOCJ2e5hpVq
 eN2omzvDh6fQ5t36jEw==
X-Authority-Analysis: v=2.4 cv=A45h/qWG c=1 sm=1 tr=0 ts=69539446 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=a9xO4-qOGlSrq4zDlYoA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: GtK3TYX2MCZTnuE9SEMujhS-yVeKhWWk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_07,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 clxscore=1015 suspectscore=0
 bulkscore=0 phishscore=0 impostorscore=0 spamscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512300080


On 12/29/2025 5:47 PM, Konrad Dybcio wrote:
> On 12/29/25 7:06 AM, Pradeep P V K wrote:
>> Enable UFS for HAMOA-IOT-EVK board.
>>
>> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
>> ---
> [...]
>
>> +&ufs_mem_hc {
>> +	reset-gpios = <&tlmm 238 GPIO_ACTIVE_LOW>;
>> +
>> +	vcc-supply = <&vreg_l17b_2p5>;
>> +	vcc-max-microamp = <1300000>;
> I think they should both be 1.2 A peak
>
> Konrad
This (1.3 A) is as per Hamoa power grid, which is same as SM8550.
>> +	vccq-supply = <&vreg_l2i_1p2>;
>> +	vccq-max-microamp = <1200000>;
>> +
>> +	status = "okay";
>> +};
>> +
>>   &usb_1_ss0_dwc3_hs {
>>   	remote-endpoint = <&pmic_glink_ss0_hs_in>;
>>   };


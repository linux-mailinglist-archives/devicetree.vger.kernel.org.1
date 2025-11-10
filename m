Return-Path: <devicetree+bounces-236658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 43CE5C463E4
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 12:27:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3711D1881DEC
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 11:27:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFEE03101A2;
	Mon, 10 Nov 2025 11:24:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Wl8ZOr/B";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YEjQOrvm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDEA730FC2D
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 11:24:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762773889; cv=none; b=H6sxYN4Oghst0cNuKBLjI4fao6MNq+rmXcSfIfbkzUEXUNGjiZ7F2AJWT+/DLPfkzrAc88fjOxb8vSishZ0RMhvbcmxVyzQ6itgsnE2UmMQZubXs0vqBOVT2IkSkHMrON1i2+UVnOFgyJbD1djkaLb2ZEAp7oA0N8k9jwvGqm5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762773889; c=relaxed/simple;
	bh=byzn9X/Erm5QdHiKKyfOLLghcHfQJrzA0yjBbWl3hBY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=j2TPjNTMGhhWaaS3bl5vdOiokZ9s8PPzYFwuya1MpKbGNMQ3VhgE0mNcGqEqiMeRL9DRO/Z3xd8a4R5JQvYuXmti1bYglaJ1Lq4WUbCE39zR8rNHePwABHHgCf1xuPFhVw+ChlqKiTIfd9cUjp6SHFUSLqUvi401R6X5lZ4oNtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Wl8ZOr/B; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YEjQOrvm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AA8qL6S1795143
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 11:24:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xFffn2en8LIBlqy60K9ezlTkm5f8sOjvCa40OlkxPdU=; b=Wl8ZOr/BdtzHDaX5
	/sTTA+kLfJYAa9NradnGjXaR6+fb8DjeCQrlMALloQEjiMkWRJ4tCwJuMHrJ7Iq2
	n9er1ovp46KGxh96ot/mYvq8O17gDRxdmvmT2hqwHSogovYNk+612L0BOcBp7tfb
	XeN49Mc/K5sOHYyZg/t3fxckLxIZhOI84Q7w43SGSmujveIFIezO1TkdLQEaHNAF
	yzCtbdlfp3Zw/a8LpEqyEtWEGDY7xecriCsamStbTbn6vq2fnof8TFyL5HKwcPJa
	IxfaQyShAAjs17JxlMfNexp6kmZ+ufVMhQut9nWPhJdDJOG4ikLWgqvbrFK5zKW7
	iatjyQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a9xvjchbn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 11:24:45 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4edb4415a37so6710281cf.1
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 03:24:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762773885; x=1763378685; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xFffn2en8LIBlqy60K9ezlTkm5f8sOjvCa40OlkxPdU=;
        b=YEjQOrvmyiThORsSYUodYehgY2S0e1kNOUI4+/p/jmNip/Xvu+OlRt5VJEgpy+FtoZ
         kXmOKocLir9o7YV5jRWhLl3vd57+bxflgm5Jv9h4uXkB/W2bSvCKEbuVdvtLUwBkVZWk
         RfwWYndoQdMpE9W+ZmkVAz/3Gf1I4yVoZRXwXoUx9cwazAMuZblGxJveIHOecWGuvtAT
         Sf06qpoTiekhSoogwSkIEtsEJXHCU29Dg+GKRiAYdVm/lo0kTKd7i6118PoU5KE7WBCe
         wAnYnbwda0hjudDzCORnf+NYLFmdFNlvBMEW+I35AqGq0orxOwcQS1dNun6ivpw+KNfA
         xvZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762773885; x=1763378685;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xFffn2en8LIBlqy60K9ezlTkm5f8sOjvCa40OlkxPdU=;
        b=AoXiK/lhIYFetLjdG8cF1jtvNwBD02Z+qNzAUa9aqZzNIFPNkis3xRthfROa5/+ZTA
         xCgUQ6hiU4DhJBptKZQpizJND6rUL8uEwQG9T6+ciHmjj4gBAeHuSsFIhYS0UPnDLo6s
         1wZGxCb84aFyAVOkETZ1FzVq8hwR0A3/0oOKxWxXESH5v4oOIpZ0TvBCzokP1uoCYrkx
         Lrt4tffG53egV7VJHx58OK3/KTLW9DtSJbRir7TvyI6kina6TFx0ZWa8jmOono2V8ga+
         NdraCfuC+RbDqy26sXNSEmEXoiFixoMWlpyeDmvrQOcjmYtROEr0cXP9JjT8Hu2OnU0f
         6DYg==
X-Forwarded-Encrypted: i=1; AJvYcCVIIdrJnSDH+48KImQGZkx3R47HoynNN5V2rE0B2mIgdIr9y3KbCsMhsAPi96pCzD8J2kidK08xQIw9@vger.kernel.org
X-Gm-Message-State: AOJu0YzuMDfVX8AapPatgxC1F6gQOaptQFX7vz5QCqR/hqvj9/JDaDno
	5il+djF+rhsn6glrmnfOBi8oXP5FSrp5FuoKd637GG10VXqbmKR3smi3NXxqdIkFNTLD36+ya09
	v8y+BPOoMqv6U9qgCIkuo1+KVSTsJOeoB3X5jnFlM565FaovDKphlAr8QAvg0MK36
X-Gm-Gg: ASbGncu3ZkAFBJVgbcPTZuqZS5rPfmuDPT0QUA2Di0mg6WK/VuJYLi2W3SPscEaV/KO
	blBwXgHXyyUj3yx+44MXcL8gyyixt+53xZaIFnpse4nbROLeS1GCKC62ZN+Fc6CuHZ9jdORmsvl
	dI5R3M9fFwI+6K/sbR5IywCYLbK1VdayVhbYCMO3hNShpj9BYQdrbi1tiG+xkY4NP+GlvYrTWL7
	ctasxOI+Y7Q1RoOWnUEQ8yZ7F7W3UZVDvh7Bdf8/7upw266EJhHnpbrHEk9vmNTvHzOCE7pwGlZ
	VGve9OYgbat3gMvSKlkdLjvFoegpZD9NDuETHt+IudnbsVmOj19F1igka7O5825I6/IhqijZ83A
	fjNMT5sdSSXI5XN//fWeUZZwtWrGtGDrTEYqOAhpVvkWBmRN4gz5xrdes
X-Received: by 2002:ac8:58d4:0:b0:4ed:67c4:b7b9 with SMTP id d75a77b69052e-4eda4e9f4c5mr64158391cf.1.1762773884928;
        Mon, 10 Nov 2025 03:24:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHRNx1skosrpDnJDbABdAT3OyOCJ7HmNfZ3gKfC3+oNLtV19GE2GTRJ9VnutOwFLB5/ZfI6nA==
X-Received: by 2002:ac8:58d4:0:b0:4ed:67c4:b7b9 with SMTP id d75a77b69052e-4eda4e9f4c5mr64158241cf.1.1762773884480;
        Mon, 10 Nov 2025 03:24:44 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bf9bd72bsm1066649466b.49.2025.11.10.03.24.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Nov 2025 03:24:44 -0800 (PST)
Message-ID: <0e4ee0c2-26ec-4024-873a-43db236a94c6@oss.qualcomm.com>
Date: Mon, 10 Nov 2025 12:24:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: hamoa-iot-evk: Enable TPM (ST33) on
 SPI11
To: Khalid Faisal Ansari <khalid.ansari@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251107-arm64-dts-qcom-hamoa-iot-evk-enable-st33-tpm-on-spi11-v1-1-8ba83b58fca7@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251107-arm64-dts-qcom-hamoa-iot-evk-enable-st33-tpm-on-spi11-v1-1-8ba83b58fca7@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=QuxTHFyd c=1 sm=1 tr=0 ts=6911cb7d cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=pkoaJ9_ZSZekED1SlcUA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: RuyqB4oVtUgnD2ni6op-2n3lech-el5h
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDA5OSBTYWx0ZWRfXx5UbQimMnnw9
 98hC3Emn3gzp6dGM4WhSTvMfSDiSb0zKZpXrn0tKcf+BYQ3lZI4dxvseu530g0naATsk9M/q7F3
 ZGnboQFE/VGFv7gAHbejIQBvo1mIAGWEsoXTk2BlvSQyTrlDRUAVthm3rkUfLqgyjXtvO6N+98T
 1ucOVVGdGxwGvphqsGNyOMI0I8xgFft4Ecr3Hsga1ATsKVwIAdjEai3DBTF1HmZ5ZP6eZxBW/LE
 /Ti6+Sddu1bHkw1QV8Dplwb3G5s5iZMM5fxL+XS22l3ySC/mSImeDJMAiCzSG9FmidBPizlvEVX
 iPC0JoPdbAHp1f7M5bJRPIgtY2Qd/zFzUDrMwphYNXjFNxwnrWAcH7DGcxQMk3TklWR+BQlBD9s
 nnEo0hKDwZnrrvN2k/AlJcnee/8T0w==
X-Proofpoint-GUID: RuyqB4oVtUgnD2ni6op-2n3lech-el5h
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_04,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0
 spamscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511100099

On 11/7/25 3:32 PM, Khalid Faisal Ansari wrote:
> Enable ST33HTPM TPM over SPI11 on the Hamoa IoT EVK by adding the
> required SPI and TPM nodes.
> 
> Signed-off-by: Khalid Faisal Ansari <khalid.ansari@oss.qualcomm.com>
> ---
> Testing:
> - TPM detected via tpm_tis_spi
> - Verified functionality using tpm2-tools (e.g. tpm2_getrandom, tpm2_rsadecrypt)
> 
> Thanks for reviewing.
> ---

Depends on <20251106102448.3585332-1-xueyao.an@oss.qualcomm.com>
which you should generally mention in the under-"---" section or
a cover letter if one exists

Sorry for not thinking about this earlier, but generally you want
to send such cross-dependent changes as a single series

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


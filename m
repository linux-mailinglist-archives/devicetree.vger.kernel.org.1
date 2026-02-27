Return-Path: <devicetree+bounces-269028-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IFwnBz3poGnpnwQAu9opvQ
	(envelope-from <devicetree+bounces-269028-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 01:45:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8650A1B1493
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 01:45:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5BAD03046A99
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 00:45:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16F812741C0;
	Fri, 27 Feb 2026 00:45:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lvuqR2HE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LFUNaY+8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA47D1EF0B0
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 00:45:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772153146; cv=none; b=XqmJKK06pMZgvuPE2J5ikkSWN+ACjvxfZt5Ek7deP10s/NLIbWVtSbzQXeSE6qSyc2d6pvZYwKu9qKpWFkevibehXaVaNjGY1125TsyWbNiGyWYWl92fJQHMpH2uMoYFwX/2y2Oo1ti1IdJlA1TdDi+m9LeODdTtT/q7Kh/VCUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772153146; c=relaxed/simple;
	bh=RQ0KpWaRqr0uvoyJvcNAtTsJpPUsoZ6URHTIXvZOOTo=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=s52BgoKKt7Zh47G+m8TOwf9y7+7r3aNrNOt7iWWpaILQ/PWiclvZF7wAzQD8X4GV02y8VyKClcqeLb1ao+Ya9/UUt3JbWUEsvbMg2dGjA9p5jDUaSJXZsVhzvYYS3x9G6zr1O7GVvZEw4vi8bojGwtP2xM3LgMr3gC5flLfLYA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lvuqR2HE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LFUNaY+8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61QMalHQ1947966
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 00:45:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	H5Zk1yA5AHmYkQ0nMJLpCbkecoQ0X9ZmvpuE5XZOo90=; b=lvuqR2HEMSzBeZPR
	gNVoHbeDxWftImwC37UIAKEXFFrPGdd5BdmLAngft7d3UyHeBN5AmTpzzmrNR1lX
	S7B4i59zBxpQ4i6OIrtA1Gt1TNvZen9+iVr1s+unnc7WcefGM3vplBxg+oUP/Kqi
	gvJijLx1knz+kmNXYnhyHct5BwgJac+I0kB3HLFYZblNGoKAbhUxz4cUAr/xjSk/
	z+GlWFx/Xehx9CmceQsIvpZdqw2GwY8KtRoEeKUyG3wzacBgdKy2lnyiavUhKAX2
	pMV9A8ujVI+GcPQx4uAe2WHCxfPDd+vqeujufVvJpwCFLfOjwQpVGiFXPig0Id4F
	dO+9Dw==
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cjc0gcf8u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 00:45:44 +0000 (GMT)
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-12721cd1a2aso37895236c88.1
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 16:45:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772153143; x=1772757943; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=H5Zk1yA5AHmYkQ0nMJLpCbkecoQ0X9ZmvpuE5XZOo90=;
        b=LFUNaY+88AtSejU3QfS7j3jQIcec3tykF9vSBEOFdQXqo8DQ8Z8G3j2KVLHFKMxX8N
         MNQBn3+beHRC+JPKqA9L0fqI3QEA7WfnZCncFM72TISFl5MdBtzKZC/b9420B5DBVRPv
         BgP53jVqEIy8qLFVtIhmabrK4Y0QmbkJetthR9Ruv0AiVCPWDu6ubI8OPUnH79odJU9A
         itK9m5ntxntRY2Vv04u2gb55GUFowgv7jF+AnNQyHu4yFi3gP1C+TwL68ss60oYyputM
         g1qz8y73UoHqkPYCK+ve2QMQB7soBaBNYj22oZ3HcctxwcovFsFVbZqyAi5MvJwRRZrO
         Wiog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772153143; x=1772757943;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H5Zk1yA5AHmYkQ0nMJLpCbkecoQ0X9ZmvpuE5XZOo90=;
        b=Xu6guUQGb216ERfhKaNvXYt7ndBLq66c+7pv59v8gKzRFM5jOVkgU3WpUcPrhvmS8i
         icFgJn+1A6rFE4sjywgPscDWn/MviLwWlfqUUq1MhRtV9HMN2Cle7mNlCnsQCCgZ2MZE
         JY37xq5bwys6MMGCVuL6c/+E8z297F0gGRdAE0SjzooeaRM81FmH/t7/Jz3lx26wPTty
         5EfMGDqz7JmcFH2MbQ7Cna/LUgIWYsdZT4v7blO/1o9cHY6aeFwPI/704NVZfC2IS/Y0
         NmqZUTGeAvRn65MIHO37kS0I1jhRELDyNLb/VDSPrFPi5YzSiWmEsZ9bfFPT2js8MLxj
         k8wg==
X-Forwarded-Encrypted: i=1; AJvYcCVsoc0wP1+DUx4zd5HX9IPzhV+VTQ0zFKRLz1CYO889Gl7ZYioyHapCe7NTlCHYY454eaHgWZ464K+W@vger.kernel.org
X-Gm-Message-State: AOJu0YzfA8tRsadNgyGYMkP9ixj28P9AUfN8EEXgzSodsEe3rc+Aqgoz
	QwSg4DyGbd3paaX6aVWFVxsDI+NOFu33IwT+evzivGJR9DLIOzCLfXUfUfLeiqEA7+xaXdQPNzL
	gObmQypAG6vI5nVVJ8KZcGw6mx6Jvk4mUslppq3TGJqtqgLYkrb4P+6jRaaSwKYPf
X-Gm-Gg: ATEYQzwIdWPT4MeOEmW+A26KhljkL3Xp4YoWjhEGQ4nmODzV3Gi/YEQsSW8LGHOBDot
	cs+qyP1aW6K1OQhX5sRC/YyK2P+7Dz0me3G+Z5i9xYLE/3vx4vbtYVtJsXeqjehIHK4ClXCHzgT
	YdPXl4JxuoLRZwBT1/9qQE2UfG62PRvQwZCKWwz2QDliXaCJ+v7F3XZm3BPFBn2FSyk4u26NnE+
	wZLe0UlTiV24cvX8gzjMxpaaSjQryyju/zXDQDC9EpMJ6AqPFhpXCEUor3c7JHB9RWqHa9xsg1N
	8gKyI9Bt4SddkYTueOjnQHhzcPA8peN02757fm7QiPO2PT3Xv9XRzQveCSlYRetahGTvjyqMeTc
	HuScCv8BChilrVL/772PK3GSjl8qCwwCqUquG8w5Lh1D3YcRG7ErLWCCpguvaJTevcUUi5gz0pk
	WcxA==
X-Received: by 2002:a05:7022:220c:b0:119:e56b:c752 with SMTP id a92af1059eb24-1278fce01ddmr445845c88.23.1772153143286;
        Thu, 26 Feb 2026 16:45:43 -0800 (PST)
X-Received: by 2002:a05:7022:220c:b0:119:e56b:c752 with SMTP id a92af1059eb24-1278fce01ddmr445829c88.23.1772153142651;
        Thu, 26 Feb 2026 16:45:42 -0800 (PST)
Received: from [10.71.185.57] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-127899d49c1sm4757557c88.1.2026.02.26.16.45.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Feb 2026 16:45:42 -0800 (PST)
Message-ID: <de8c08fa-9349-4367-b5cf-3f0347b7ded3@oss.qualcomm.com>
Date: Thu, 26 Feb 2026 16:45:26 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Deepti Jaggi <deepti.jaggi@oss.qualcomm.com>
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: add initial support for qcom
 sa8255p-ride
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Shazad Hussain <quic_shazhuss@quicinc.com>
References: <20260225-b4-scmi-upstream-v4-0-50cfba9e6a0f@oss.qualcomm.com>
 <20260225-b4-scmi-upstream-v4-2-50cfba9e6a0f@oss.qualcomm.com>
 <pcztlwz7nxbvkm6rsbpot677k47novl65waimyfnptcuhnklxq@v5ncarkpnedy>
Content-Language: en-US
In-Reply-To: <pcztlwz7nxbvkm6rsbpot677k47novl65waimyfnptcuhnklxq@v5ncarkpnedy>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=XI49iAhE c=1 sm=1 tr=0 ts=69a0e938 cx=c_pps
 a=bS7HVuBVfinNPG3f6cIo3Q==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=V6sV-h7pAyJlgzzvQTgA:9
 a=QEXdDO2ut3YA:10 a=vBUdepa8ALXHeOFLBtFW:22 a=cvBusfyB2V15izCimMoJ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDAwMSBTYWx0ZWRfX4eRQhPrwO2jq
 cqBOM4HEexZrS9OUm20i+bo98K7d9kC9i1SnRdZjm9pLZ+dJI0ZeVFnKLDGNv6nMdS6e8YZ2TgE
 0EZ03vlhpgZZ40j0XfON9IulPArjxgU1bZKEIPYOEeu6lOiQgZgW1SynEAa3cjDPzUhCBO8eUo8
 rRXOplUfhFnFnSBmaklepgIjiqG5RS3BRtV2gIWpJevWKQCnlfOxS6aMFnWk+C4P84OUHD3DLu2
 VIx8io7e0GLUL1fwkbbtEVQiQJtBNfk26w88h2m4bAk8d7yjHg/boGaLm/Wm6DVAoPU8MEtEdt9
 J6NZuJ7GMrLP7eMoaGqncCZRaeiem+209C0r54DSeIF80ur8yvXK+uSlzwNRhC2ydcwDJpACawS
 BRrSVz9Rj4ASxHxPGaydhAu1c95UcbXsINnlBxeqROow3ceajhq3abTdAR617XxKtEaeKai1nZP
 LC/6B2y/K6yXEiQ7EcQ==
X-Proofpoint-ORIG-GUID: WDFKNkp1ehT9Zz5Df0hi_vaXeACy4yD1
X-Proofpoint-GUID: WDFKNkp1ehT9Zz5Df0hi_vaXeACy4yD1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-26_03,2026-02-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 clxscore=1015 spamscore=0 malwarescore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270001
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269028-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[deepti.jaggi@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.997];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8650A1B1493
X-Rspamd-Action: no action


On 2/25/2026 11:17 PM, Dmitry Baryshkov wrote:
> On Wed, Feb 25, 2026 at 08:51:07PM -0800, Deepti Jaggi wrote:
>> From: Nikunj Kela <quic_nkela@quicinc.com>
>>
>> Introduce initial device tree support for sa8255p Qualcomm's automotive
>> infotainment SoC and its the reference board: sa8255p-ride. The dt files
>> describe the basics of the SoC - CPUs, CPU map, ipcc, QUP,  geni UART,
>> interrupt controller, TLMM, reserved memory, SMMU, firmware scm, scmi,
>> watchdog, SRAM, PSCI, ufs, pcie, pmu nodes and enable booting to shell
>> with ramdisk.
>>
>> The Qualcomm automotive sa8255p SoC utilizes firmware to configure
>> platform resources such as clocks, interconnects, and TLMM. Device drivers
>> request these resources through the SCMI power,reset and performance
>> protocols. Assign each device driver a dedicated SCMI channel and Tx/Rx
>> doorbells to support parallel resource requests and aggregation in the
>> SCMI platform server. Operate the SCMI server stack in an SMP-enabled VM,
>> using the Qualcomm SMC/HVC transport driver for communication.
>>
>> Group resource operations to improve abstraction and reduce the number of
>> SCMI requests. Follow the SCMI-based resource management approach
>> demonstrated by Qualcomm at LinaroConnect 2024.[1]
>>
>> Limit initial support to basic platform resources, serial console, ufs
>> and pcie.
>> Defer enabling USB, and Ethernet to subsequent updates.
>>
>> [1]: https://resources.linaro.org/en/resource/wfnfEwBhRjLV1PEAJoDDte
>>
>> Co-developed-by: Shazad Hussain <quic_shazhuss@quicinc.com>
>> Signed-off-by: Shazad Hussain <quic_shazhuss@quicinc.com>
>> Signed-off-by: Nikunj Kela <quic_nkela@quicinc.com>
>> Signed-off-by: Deepti Jaggi <deepti.jaggi@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/Makefile           |    1 +
>>  arch/arm64/boot/dts/qcom/sa8255p-pmics.dtsi |   80 +
>>  arch/arm64/boot/dts/qcom/sa8255p-ride.dts   |  161 +
>>  arch/arm64/boot/dts/qcom/sa8255p.dtsi       | 4861 +++++++++++++++++++++++++++
> SoC DTSI should go to a separate commit.

Thanks for taking the time to review the series.
Ack.

>
>>  4 files changed, 5103 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
>> index f80b5d9cf1e8..facfe99c2d97 100644
>> --- a/arch/arm64/boot/dts/qcom/Makefile
>> +++ b/arch/arm64/boot/dts/qcom/Makefile
>> @@ -172,6 +172,7 @@ qrb5165-rb5-vision-mezzanine-dtbs	:= qrb5165-rb5.dtb qrb5165-rb5-vision-mezzanin
>>  dtb-$(CONFIG_ARCH_QCOM)	+= qrb5165-rb5-vision-mezzanine.dtb
>>  dtb-$(CONFIG_ARCH_QCOM)	+= qru1000-idp.dtb
>>  dtb-$(CONFIG_ARCH_QCOM)	+= sa8155p-adp.dtb
>> +dtb-$(CONFIG_ARCH_QCOM)	+= sa8255p-ride.dtb
>>  dtb-$(CONFIG_ARCH_QCOM)	+= sa8295p-adp.dtb
>>  dtb-$(CONFIG_ARCH_QCOM)	+= sa8540p-ride.dtb
>>  dtb-$(CONFIG_ARCH_QCOM)	+= sa8775p-ride.dtb
>> diff --git a/arch/arm64/boot/dts/qcom/sa8255p-pmics.dtsi b/arch/arm64/boot/dts/qcom/sa8255p-pmics.dtsi
>> new file mode 100644
>> index 000000000000..394f75bb376d
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/qcom/sa8255p-pmics.dtsi
>> @@ -0,0 +1,80 @@
>> +// SPDX-License-Identifier: BSD-3-Clause
>> +/*
>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>> + */
>> +
>> +/ {
>> +	thermal-zones {
>> +		pmm8654au_0_thermal: pm8255-0-thermal {
> This file defines only thermal zones. Why are they defined here rather
> than in the board file?

Will move to board file.

>> +			polling-delay-passive = <100>;
>> +
> [..]
>
>> +
>> +	arch_timer: timer {
> Unused label, please drop.

Ack

>
>> +		compatible = "arm,armv8-timer";
>> +		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>,
>> +			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>,
>> +			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>,
>> +			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(8) | IRQ_TYPE_LEVEL_LOW)>;
>> +	};
>> +};
>>
>> -- 
>> 2.43.0
>>

--Deepti


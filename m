Return-Path: <devicetree+bounces-276411-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gOW8HqGZuGmsgQEAu9opvQ
	(envelope-from <devicetree+bounces-276411-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 01:00:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6F42A2250
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 01:00:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A5DE7303FDCA
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 23:59:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2865337A4B8;
	Mon, 16 Mar 2026 23:59:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dJR3uFYQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Um/mRwLb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDF9E37754B
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 23:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773705564; cv=none; b=YQhzI3GRMnGZIHbhaS2ricnOIEmaJxOrHoX5nakSuHjDTbnXPkUMs5UpEPzjwgja1SUQUqkMixbO4g/lvmkYi8fFR1xsZ2IL7g6WPP/nLLIrJ9kVFhjvp2rsWY6GaSG5MkH/8WdqwVEZQ5nfBk1tV0tR3fxedv3lPoRm9T9tT90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773705564; c=relaxed/simple;
	bh=oYI7z8iNeGM+rWeGruiVvP9NSZYISmtijRyIFVFhaWw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GiJDd+Xxsz4e0t0A8TK7IMg0BMYYNQpS2aZwJqX14WcMqMCP6UkoC0FcpSy3oDTfTCTe2elfwkO90CK5KjkgOJp3eT8mGEuQcsPeHMoz3qmz4uD8wQDzG6ScFEHlF6mt1VSh6rkgZ7fiL9367q2Q8KHXERoDQbp1BH08SG1qCvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dJR3uFYQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Um/mRwLb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62GG6bRp4022389
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 23:59:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YHpf0qlU3IbYn7PC2sJHn8f+KjEEdcZ9cbZSK+YEuC8=; b=dJR3uFYQFKZnaDIq
	rw5NtfZjwfBibMjzmxr0xyCL2SrF5/g59LnZPAZfzBwnxHGx4TfI6Xs+EaJsyUCk
	S53okrqdp89yrRLUrDoglvkqziY5eQTfY5ow6cvmcjojaK8VkKiGyfl3Pwnjp3Zd
	o9CmCRDj4WnJY1RZO2P/tnLgsWwoZaCztARZ5v5N8i7DS24A3TgzHzreqaZatk9u
	PhCnEr2L3wY3QItMuTNqMzTO9EsSmodqv9PKyPejPFb79M+de/PssSm/3pQ3hafE
	ifZ9cT8f0cJhbHVNQb7S+afoodgsJai9EqBaKbS8CLxtDRSmccIaSaDZNHR88Ac3
	0twfiA==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxn3fhbdw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 23:59:20 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2ba9a744f7dso5002027eec.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 16:59:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773705540; x=1774310340; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YHpf0qlU3IbYn7PC2sJHn8f+KjEEdcZ9cbZSK+YEuC8=;
        b=Um/mRwLbhpKm9Lr7cvRjPiCfHIesyfJ0Zohbs8QH/eB3QlzHUNK2IQKJjNDizC2NQA
         9BH9NhHutKqQirDWHbJN3y6B24xa+vSNEE2+jCEwPkPSLwFYFWgHhUa+oXgmtAG1pfQR
         47HsDXww2XIivytlYi8EKButYUhMQ5ANKr1gazCZSrn1y8uT5tx94U53cu8Psg1UIXD8
         ZD5h4vhVpiUqDwKOPUHj00xv0vVtV2ii9FpuocsD4XwZfRRm761f6Po4WT4cDt8P317t
         V4YTZ7fuuTz/O46mSpeLr4BVDhokLefZ1wvPAzmtfyESxozF+dW5w+zIVngGsnPK7g50
         8k2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773705540; x=1774310340;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YHpf0qlU3IbYn7PC2sJHn8f+KjEEdcZ9cbZSK+YEuC8=;
        b=gQFTLkxnXX7owD+3AISOrOLpCbXrmQWX8R9quUNH2lIxM49xWBA18rsGo60fm+eXqv
         Vut4pACsopK8KtgFykXj6FAz8CqVRHYcUED491oaAuSwn43fLrLU8K6I2kJrb802HC/V
         bKyFwJMjc57pGgDkIfLLL9IA7ueaBNI+M+WIbA81P61AkBuDO4ytC3yvynKYtT/uWiMN
         5lDioea6x8bK7p8oR6oYbnrMlbHkGFI7yDIMwtb1At5Hii77N4EFmGaubvSzG7JKf2Qx
         gy3uvmMhngZ+MDt0wtdZA8zkb7u35AtVskZ+iVeJKyc3tNTTpWAU6zh9KlCt2hvlw6K0
         QqhQ==
X-Forwarded-Encrypted: i=1; AJvYcCXLLQKb9EDm9ErYOS22P8urvQDO1aJsU3gt+sK73hbkA/0z/jSkRwdyGs2ijTHzHZWYkfA12Fb+BP8q@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7SdixhqW6jUaIsXYnHwxbouKXyOLIV2+3j45zUQVjztIFYDSG
	775AgnJ5bMZg3V+a24uSCxOtdswzPVcARKYYjJkRIZYKCD4/mRYkuBvqFddgB9JiC/vx6L0tNsE
	4DW5RIkSh5FwuZf7Sa08fVDuVSopQDyjS7bu5cZJgM1SHxMhzdWyJraIG8cEqKXAi
X-Gm-Gg: ATEYQzzGJN0G1VQ4KJ4Bww5ZGqWhAcdktMzymN1v/7igfAAuMrUDruuLBusnfvu3Pfr
	Gsd7ve2bL2c2qrHs6uBvXiQ0lS0PKKsUHsFGOTR/0Vo/wlzByBvNCIETKJIKHmYW8zAIuK3SPDF
	b1lGch5vjxlB4jf4DTWA2tp9m2sm08XqNhARgr74t/LKKRUafRp9s/xdYHkOlScGcRNqyVUE01n
	mPSd1ZYHT4J4BqreATD8o0k5OpkFN4fnvW22umFEe+nst5ywXPRN/ZvHHWsQIUagPexftZQ8GBW
	ZpdGRZMd0QuLqLRZOThWhPWy62JkuL49QqqNtBWima+w1mU85aWX1arVDEb5g1mcXVjoq49oPSr
	cDkWUn9wIolJctxu/Qv/K+bnQPKlm1tMwTQkFfocjmdAQuQaMVDRVuuGQfG8XYZiEsNrNWbV3Dp
	65wg==
X-Received: by 2002:a05:693c:2c93:b0:2be:8216:57e5 with SMTP id 5a478bee46e88-2bea53ec7c3mr5584724eec.9.1773705540276;
        Mon, 16 Mar 2026 16:59:00 -0700 (PDT)
X-Received: by 2002:a05:693c:2c93:b0:2be:8216:57e5 with SMTP id 5a478bee46e88-2bea53ec7c3mr5584707eec.9.1773705539673;
        Mon, 16 Mar 2026 16:58:59 -0700 (PDT)
Received: from [10.71.185.57] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2beab3cd473sm16316228eec.8.2026.03.16.16.58.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 16:58:58 -0700 (PDT)
Message-ID: <a7866b7b-9cc3-49bb-80f2-37fdbce039d5@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 16:58:57 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/3] arm64: dts: qcom: Introduce sa8255p SoC
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Prasad Sodagudi <prasad.sodagudi@oss.qualcomm.com>,
        Nikunj Kela <quic_nkela@quicinc.com>,
        Shazad Hussain <shazad.hussain@oss.qualcomm.com>
References: <20260304-b4-scmi-upstream-v5-0-f8fc763d8da0@oss.qualcomm.com>
 <20260304-b4-scmi-upstream-v5-2-f8fc763d8da0@oss.qualcomm.com>
 <e80ad550-71a0-498e-9ab8-6c0859883f7b@oss.qualcomm.com>
Content-Language: en-US
From: Deepti Jaggi <deepti.jaggi@oss.qualcomm.com>
In-Reply-To: <e80ad550-71a0-498e-9ab8-6c0859883f7b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=C5bkCAP+ c=1 sm=1 tr=0 ts=69b89958 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=xiaT7CXxcbYZedJJ_CoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: YyFWQ3fn35luf1HcP7JoptV_UI9xP-Iy
X-Proofpoint-ORIG-GUID: YyFWQ3fn35luf1HcP7JoptV_UI9xP-Iy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDE5OCBTYWx0ZWRfXzOPOPXYQIUv6
 Sg1ajP2DWWsXzbpG3ym1hNQtm8naUX7+2Squdan+36sCicztuPcfJSuJJirHLoImqcWcHYnQD4U
 sVj9cXwHzcnYWDnVGcijQT8HATGCGBDCOZN66XUgbV1AvaiVpfOqmlp1BS8ZZbasrSvvoJZpgBd
 EBLQ0aM79QCiCXfn9WpbueCl3M0euxkV6fbvqmp9dUGZgaGtoMYbsaOPN238oZ5qMP2KE577ZjB
 6pN2DJD1xT/Ye6IE075YDFjSD5MrdZlWg5gZxi/TqAq+u9futihO2Toxtx2G6ish+Yje4J0HQ3Z
 /kbiZUolKRbyGPm0COO1wqEQ3+h2eC7Inqpa7OhuL319vaqx/Xinh4tcGVKWVUF51nuINEReUgu
 vPYj6CVx8Q0oQ6LXUnWsWibQGeZ6f7bzcU3py5fNri9XEf2vvra/IVJ7WhBH1TYQGmpJ32JLr2A
 3OM8VXV/1QapkB1tnUw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_06,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 clxscore=1015 malwarescore=0 impostorscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160198
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-276411-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,quicinc.com:email,c251000:email,f000000:email,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,linaro.org:url];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[deepti.jaggi@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: DD6F42A2250
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/11/2026 6:41 AM, Konrad Dybcio wrote:
> On 3/5/26 5:28 AM, Deepti Jaggi wrote:
>> From: Nikunj Kela <quic_nkela@quicinc.com>
>>
>> Introduce base device tree support for sa8255p Qualcomm's automotive
>> infotainment SoC. The base dt file describes core SoC components- CPUs,
>> CPU map, ipcc, QUP,  geni UART, interrupt controller, TLMM, reserved
>> memory, SMMU, firmware scm, scmi, watchdog, SRAM, PSCI, ufs, pcie, pmu
>> nodes and enable booting to shell with ramdisk.
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
>> and pcie.Defer enabling USB, and Ethernet to subsequent updates.
>>
>> [1]: https://resources.linaro.org/en/resource/wfnfEwBhRjLV1PEAJoDDte
>>
>> Co-developed-by: Shazad Hussain <shazad.hussain@oss.qualcomm.com>
>> Signed-off-by: Shazad Hussain <shazad.hussain@oss.qualcomm.com>
>> Signed-off-by: Nikunj Kela <quic_nkela@quicinc.com>
>> Co-developed-by: Deepti Jaggi <deepti.jaggi@oss.qualcomm.com>
>> Signed-off-by: Deepti Jaggi <deepti.jaggi@oss.qualcomm.com>
>> ---
> [...]

Thanks for reviewing the series .

>> +		tsens2: thermal-sensor@c251000 {
>> +			compatible = "qcom,sa8255p-tsens", "qcom,tsens-v2";
>> +			reg = <0x0 0x0c251000 0x0 0x1ff>,
>> +			      <0x0 0x0c224000 0x0 0x8>;
> All TSENS regions are 0x1000-long
>
> [...]

Ack

>
>> +		tlmm: pinctrl@f000000 {
>> +			compatible = "qcom,sa8255p-tlmm", "qcom,sa8775p-tlmm";
>> +			reg = <0x0 0x0f000000 0x0 0x1000000>;
>> +			interrupts = <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>;
>> +			gpio-controller;
>> +			#gpio-cells = <2>;
>> +			interrupt-controller;
>> +			#interrupt-cells = <2>;
>> +			gpio-ranges = <&tlmm 0 0 149>;
>> +			wakeup-parent = <&pdc>;
>> +		};
> Praveen suggested GPIOs are not controlled by Linux:
>
> https://lore.kernel.org/linux-arm-msm/12063990-70fe-4faf-89fa-c74c7bd97f42@oss.qualcomm.com/
>
> Could you comment on this?
>
> [...]

For buses,FW is handling, but for PCIe and ethernet , pin configuration is controlled by Linux. 

>
>> +		aoss-0-thermal {
>> +			thermal-sensors = <&tsens0 0>;
> Is Linux going to act on any of these thermal trips?
>
> Konrad

Thanks,
Deepti



Return-Path: <devicetree+bounces-261611-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cAzbArcJgGmQ1wIAu9opvQ
	(envelope-from <devicetree+bounces-261611-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 03:19:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B45BC7DC9
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 03:19:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0AA4A30048D1
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 02:19:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 880C31E7C03;
	Mon,  2 Feb 2026 02:19:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UO/KZ4nw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cqkw7EUU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130A23EBF06
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 02:19:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769998768; cv=none; b=oPkHilq+U2JUuhRb3wj1lWqX0gk0aZeE0bd48BpW3w9wlPio6bf2BZ8DtW6qN8cdfesGnEPjxPuvDOYogqAgikQKC1J/8eaautO64cqUBGfeep2OZnNz8bafWvVZs7wjwR72EJOLHkQZLqLJgyypBVikHGtZkbNHayV4IqehnYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769998768; c=relaxed/simple;
	bh=dmsQPhyyoo//BQUfpD6c9uWniyt09qvEuzjYSnJEXfE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BFJYPZ+YAsr/zMIqUHAkPvib8fy59Uo/HBWrLQrDS+sktaIu52dxeuNPNfhTzjVp/hvID/qIh1KWLC5XZJOWNmT9SJf1OkmtHZaqqPaWeBwdzwmhOq+GoO69FxgQ+GsxRv0xX4Tk7u7nEZNYgu85n0NfKx5+2g0MNcFnV1jNMh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UO/KZ4nw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cqkw7EUU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 611LlBb92572026
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 02:19:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	b14DYZA6t81NrDQFybjoZG0hsObrz3I5Jr9O0v6p8ow=; b=UO/KZ4nwXdG/nWDA
	TqvjOKHU3SG//jZsxYWP7wqrbk7mv2iJDsiE+jMS72orKlsx3Cl8duDd9/+I5LrG
	BH0/121g2pX0a0c2Cf7UXN35k3/N5gswxPPFLXI6Erxl3GHKyr+wXapuLCOtfMzt
	kcEa6mgxIOlsmJnQ1cdNmwbsIjdlXkUvlcRnb+gr/8zoK7eI3+boL4wgsDx6bqw7
	v4nFTsYLqkv0jtxCZ0GLEXoRDKJT8wEPE2Y6X/yRvurmZ6hI0OKQFW5+s7SWe3+8
	UBBNqb9tTzvK0niXb0+NKLO5HTSv0+Jl56Mac9glocUfpr8GD81qCQGuufUOpQxR
	u8RkUA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1awdbm05-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 02:19:26 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-34ac814f308so7082234a91.3
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 18:19:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769998766; x=1770603566; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b14DYZA6t81NrDQFybjoZG0hsObrz3I5Jr9O0v6p8ow=;
        b=cqkw7EUU5bRe2oGY6HaC+42Q7pBNAoqqIp430PsjjoIGZmrLsGU00smGR07UNwUAuV
         RpJvu/Cq3CNiN7IeTmyW15iidZD3B1mXeAT6sTRNzx3HVGyahGDd0X61dHOgNnHIaqqd
         f/34ULl30T66JNDzZZ9yJaecpKL/ZXg4F/Qe0ducCSJXKGwu7LaSwU0dPqCfXCkErkJB
         R3nUkySjsxOR1drsmqAvS9T2kqrGYrELwBQWDMEiznXQ3mRCylqh/K4B+XA9mjvCsgmB
         v1M63z3kAe6cJu71S6MF7fKcOrQpjFL72QeohumZvUu+fNqKLNuQABrYjeQB4piLWcQt
         t7iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769998766; x=1770603566;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=b14DYZA6t81NrDQFybjoZG0hsObrz3I5Jr9O0v6p8ow=;
        b=YXAR61g8i6s2qm5g35ohDeIFD3sC+j2wcg3gybb9OHT438ZPZBxNJmrjSmK7Ul1PHH
         j21zZagv8z4i8dn2hbL+4zXAMlpOz5MPEMnQpuQsaMCLvpiXpQN1hbdQarzr+g7B73AX
         tYkDpEH/DUsNs2esVTfolfyPd6+6rZLb3jT+ybAUzJ+aV/UCS39xnbmLvvsOJCJCaQOm
         5k6WTyQQG0Wbc/1IBYuRV55iA97e8a+2GDPweqCbImskCM5FLXucFux7DQQEEVEAyzPp
         94XTMdcWBOefqs+59f5dYrIMYrLpdmqdUSzOtyhzTljfKz1OHTzXynsaOX3oQKY/iwA6
         Wrpg==
X-Forwarded-Encrypted: i=1; AJvYcCWrl4Hil4XIty856Tlmaw4WJpDg3ZEMAWAFbDUB/MWQRXS2d/9M3SJWKjDBDyBlAK2MHTMRtt0G9JPi@vger.kernel.org
X-Gm-Message-State: AOJu0Yz63d1TKwrG+1oMzoTK9FxVOvac13t6wftFZAgSlXd55oA3y8qu
	O7j9oG0X5p6voEkHzpQ0NsYGU31/2XJ6Dp+IKunr3gWdEWtzIL9tAcw+paGFVZ8lPpU67TwUIzF
	YHLsUxOlNl6TtrvZWaI1JolShfx6vu0tniuIhpmkUBidF26uXdXmvKoGcFfn8tFQC
X-Gm-Gg: AZuq6aLYG60rk13tWm7YzyzWiI8VHvZjHKLMNP5mT0TLfPNUa0mf9P3+RzPGQddDfiV
	9CvrAPgLPjvCFve/JenjpIBiEQkmYBMjDeQxw/SdSCJp8gSDaT01r1Ev/6vuVcjgcKF+2O9OqUk
	Zdh1BBBMyqoZ4FNsNEynopCsSvWpt4vrkERShpJjnh0akMGvQSdB3UKqIL/zh9y5VbiOmk2HBYy
	qwrdxDorTZHnh7doHBACVJuf6+t1WPghbHzpbsOIUCy7i9S8AO5OHDDkYie1YU3z1XYeE9P4UJ7
	nvwFiut/SV3xAszgnBwLFk/Z3C87h3W1hHFwvbgs/pbyRS2ltqbFQHixOEvgdTSCsCZrRNk7J7L
	krNkrqlQdEJpWrOKDJ6ZEkoJW9rAc3vQRq4rmPUPv5cWUk3SkoDo4Qi2liN5/ls4gbxwEIV3B5H
	s=
X-Received: by 2002:a17:90b:4fca:b0:34a:4cc0:9e38 with SMTP id 98e67ed59e1d1-3543b316875mr9716368a91.10.1769998765633;
        Sun, 01 Feb 2026 18:19:25 -0800 (PST)
X-Received: by 2002:a17:90b:4fca:b0:34a:4cc0:9e38 with SMTP id 98e67ed59e1d1-3543b316875mr9716343a91.10.1769998765137;
        Sun, 01 Feb 2026 18:19:25 -0800 (PST)
Received: from [10.133.33.156] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-353f6205d3esm16462175a91.13.2026.02.01.18.19.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Feb 2026 18:19:24 -0800 (PST)
Message-ID: <7efdf5ab-fd96-4388-b914-8ac1f90e5813@oss.qualcomm.com>
Date: Mon, 2 Feb 2026 10:19:19 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: hamoa: Add remoteproc in EL2 device
 trees
To: Xilin Wu <sophon@radxa.com>, andersson@kernel.org, konradybcio@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        jie.gan@oss.qualcomm.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20260130073113.3091884-1-xin.liu@oss.qualcomm.com>
 <11D9329300A4B492+9485ef48-5ac3-4030-afd3-e5c7dabfa1d8@radxa.com>
From: Xin Liu <xin.liu@oss.qualcomm.com>
In-Reply-To: <11D9329300A4B492+9485ef48-5ac3-4030-afd3-e5c7dabfa1d8@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: V9CQLgM6RJscw2FpgGDrTp_1ugThrFPT
X-Proofpoint-ORIG-GUID: V9CQLgM6RJscw2FpgGDrTp_1ugThrFPT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDAxNiBTYWx0ZWRfX/vPDzzhKOseX
 Ndc8p5kK1ysCZndoiJU2O91yN0HWM4/GMgbyW+LmLYaEBSbh9VXdN3QonAMjZvLGGQJAup0pQ6H
 h8XlRns3IA+RKZuHbkeii8jTYlnNNeAL2MEkKanRj7kd2tt/4h6DQSS3/Y1iNakSFANk/idxBQF
 LjZG7mc4y/rCEp10RPm/PLZRSldezYesp8JIUi1Q9XVExIUF9YM1B8Mgu2y4G8zoFwSzKmyA5uO
 Sg3ckCaK3W29MSsd14ANkEzlW1sxuSrPq3Ty2M2JP3pFO3wbWLu2XO8FecuXf+HB7CaSKjGogZ3
 eCmuI54SyKkKbgRftDms2Pb1AOsp9PmBIwA7H49DGV2tFnIeyLWYEe6K4Yh8ZXAWCTTWctR/lET
 sEuI0UsS+96CDaji2VDJXHeqAkvqqTOYOoB1VIOg/jeEyn/Q/W+sAR/SIchXaloSoS2HVXbwsYD
 jO58sNBPR2Sb494n7ug==
X-Authority-Analysis: v=2.4 cv=T8OBjvKQ c=1 sm=1 tr=0 ts=698009ae cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=lhBQhH1O_-Za_c4e93IA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=eSe6kog-UzkA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_01,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 clxscore=1015 suspectscore=0 impostorscore=0
 bulkscore=0 lowpriorityscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020016
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-261611-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:url,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xin.liu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6B45BC7DC9
X-Rspamd-Action: no action


On 1/30/2026 5:37 PM, Xilin Wu wrote:
> On 1/30/2026 3:31 PM, Xin Liu wrote:
>> All the existing variants Talos boards are using Gunyah hypervisor
>> which means that, so far, Linux-based OS could only boot in EL1 on
>> those devices.  However, it is possible for us to boot Linux at EL2
>> on these devices [1].
>>
>> When running under Gunyah, the remote processor firmware IOMMU streams
>> are controlled by Gunyah. However, without Gunyah, the IOMMU is managed
>> by the consumer of this DeviceTree. Therefore, describe the firmware
>> streams for each remote processor.
>>
>> Add remoteproc to the EL2 device trees to generate the corresponding
>> -el2.dtb files.
>>
>> [1]
>> https://docs.qualcomm.com/bundle/publicresource/topics/80-70020-4/boot-developer-touchpoints.html#uefi 
>>
>>
>> Signed-off-by: Xin Liu <xin.liu@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/x1-el2.dtso | 8 ++++++++
>>   1 file changed, 8 insertions(+)
>>
>
> Hi Xin,
>
> Will this work on Snapdragon X laptops running the older Windows 
> firmware? I believe that Peripheral Image Loader support in EL2 
> requires a newer version of the TrustZone firmware.
>
> I noticed that the TrustZone firmware used in hamoa_iot-ubuntu [1] has 
> a different version string compared to the WP firmware found in laptops:
>
> iot-ubuntu: TZ.XF.5.0
> WP: TZ.XF.5.28.1
>
>
> [1] 
> https://softwarecenter.qualcomm.com/nexus/generic/software/chip/ubuntu_qualcomm_iot-spf-1-0/ubuntu-qualcomm-iot-spf-1-0_test_device_public/r1.0.r1_00004.0/hamoa_iot-ubun-1-0-r1/common/build/bin 
>
>
Hi，Xilin

Now firmware can not work, still need TZ team to modify some things. It 
is the only modification from kernel side, so I update it.

Uploading this modification will also facilitate debugging by TZ team.


Thanks,

Xin



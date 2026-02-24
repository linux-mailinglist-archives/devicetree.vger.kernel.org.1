Return-Path: <devicetree+bounces-267792-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aJm+El9ynWmAQAQAu9opvQ
	(envelope-from <devicetree+bounces-267792-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:41:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D41184D0E
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 10:41:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3C52B3019B98
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 09:38:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BEAA36656F;
	Tue, 24 Feb 2026 09:38:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DltwqRYR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Bczh61pv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACF4636C584
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 09:38:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771925901; cv=none; b=jITMXaKloCSEBsPQg+Rc1TD4RoMXboRGyXPu2mwbRrrE4ok9dYSCbgWEF5WdgqzPfLQoWMY9YJsebQQGVYldphzn02UiiWWAwddgmO4CcqINZWk/Txn8WaQOKe7XmJ4DBkjZQ3mF7kyF9Gh+vc3gfHNQMIiHIJpaY09PZQjtROk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771925901; c=relaxed/simple;
	bh=TzBD1eRJUOUHls05wbjMwVzCLnvY9bJPv/uqA/anx7Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rK8asngZBc916C23TEaTtGbA49NozwM74YRTdK6Nk8+DEY690LTiPIgGQjeK5dohxooLiq5vAHXysBSXdLqKtFwn9D+5r/wYnJiL3IlsNv7MUQR3tIEy2D3d4zuNH0qBmoP7qkGwUjHG7B8Oph+gGBwTU1Eon1KDxjKq2hfpcnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DltwqRYR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Bczh61pv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61O4LSnl3123843
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 09:38:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	s1SK4xxHCghz73tk4AuBgNJLpt1PKV49tRriGiP5+AA=; b=DltwqRYRdIQcP/lF
	Pl5jCI1YCOekGMCbcSOdekrwtyDwnBuX4uAcwBzh3qU9UcM6V29B+zqG5PTc57y5
	s4CvMG0nevsWDZx16pRJuDiHQJSA69XrhZBCHytaVChM++j8FJzyyHJmWHJ/0Qsb
	sYN5/H58stYjTV8rgo1adtp9/IKfH4ffi/SCGGcZEEJBJiVXX1BbdkzSrS5cvAyD
	Bd1n3z9VzMllWPV0nn0cYUBCd/7umvZJ9pb2ufc6iJvDeZ/O6gVBufwg5hzK8/b4
	ThbanhdivJDVtMMp1uB7ToFfNahY7TBo5yCGiT2TwTVenZYlqs9VGpKTaLiVB5Fk
	ztjDsw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgte8tne8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 09:38:18 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2adae3b2135so8493035ad.1
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 01:38:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771925897; x=1772530697; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=s1SK4xxHCghz73tk4AuBgNJLpt1PKV49tRriGiP5+AA=;
        b=Bczh61pvkz49SztkjsmbCb7k4anKBL1KRMT+QN6x+P23fEWX01OKXnFf+x6Sfh8ZzS
         F9m/+8k0dvZIhEzhxY7l1jMElBFQPTFYZPR6cazizePfw6q6gPkYLR/kUnVKIdOcdI2y
         T8avamSUAm44JlwxmV2QTm8Y07RoSXNv+BCZ/D5ZlEH2Vx019lsLLyi7VUQl1bZ+mPDz
         eho9VA+TlVFbWeAsBXz/wJ5/+csZDhmYIzd9Is6f+URrof49Vt5UGcDOqV3L63stgnM5
         wFKxop0n3XAdzivOPeJOzeDMvvVc+098gGh+c0n7r1LkaOtmUbS0oSRlfRj0gRB2bXEH
         wvZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771925897; x=1772530697;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s1SK4xxHCghz73tk4AuBgNJLpt1PKV49tRriGiP5+AA=;
        b=KbSl3A6LAbjwKt9RIC7vnYC7L2+A5as3IzhKZiSxk7O/aMZL0pcYjsENO9oybj3jFm
         4LOAxhhGbp8tWCmaBbdHOz6NhyMV3/U8YGIgj/zRehNNN5k8yf4SfTFaNysm3Fd8R55i
         zkLIwwaFbmNj/4xy98zJPiweBi6ou6stPw8dsWkWUf3uGZNOipSTJvT/g/kLp/nlXa3h
         ArVZJ4J2UE0qM2MmD7w7IF3cw18OhDfxahWByuqf+2sxBW/d3EXnAwZxu8uR+l4AknBQ
         T4VkmTZQ4E1cr3TWQJJTUM9DqFhjpd8TdPYYZDPfq1DE0LOWiwn/xb188vtLxdDJMRbg
         dj8g==
X-Forwarded-Encrypted: i=1; AJvYcCW6byemMRgi8sAaQFytVBqdBfM9KJGKPM5M/dOkzLwYlzzTbLSnwf8mjN5uHzMn8kA13D/ty+w/4xap@vger.kernel.org
X-Gm-Message-State: AOJu0Yxzd4OEFKKQXB8AH5J5tus0BBDuBsqQBkdo8NOx7mYzFlHdguOz
	QuY0O66INOTfG3+0ibIdYXZ64/VT1tvYQ9knSj0KMsfbKfsXNz3fMLbyrdMBoQ5MLXgCbGYSIyk
	gNK6I0F38RKFBKtGiSSZmbwhOK0KANgHcxFiJ8eKwNXPHK2snL+YPp+yQ4ljFgVYg
X-Gm-Gg: ATEYQzyiyGa/8v57DpuVZqG+WgSW+ay4lyh1d9XnLxnJ38lzb0IYvJMBgH5LOP9F0L9
	RshbV8pc9Fdcgi0awUIxr+k9IB+KDBzfZudtWZzTysJQe3RbxIz+KASYAIS6brSSA/e2xxZ9OqR
	/OlucR2i7WNjRsgHUKCaWM6IgnwMgDSUm48pXGWm8wl4UgW+2HjsrLjGHg/nmZeLOrs0cbcOrQ8
	4QywEiUvOdTSKqvYWZ/EE8CoPTScMh0JyYPoacF1ujQTca2HPOyUzPzVNbRzJiQZ3cJwMCANtCL
	4dElboIT/F40dhvSdlN+pspU0bZ8BR5UTSASG9HhLc030Ko0b/+GQEumkxkQrDDAiEXGoYt/ZlM
	EVep8yws7wciSPy6jaRprLIM9Utj/vmX3xXDmYhOxwGycIM5wH9V0
X-Received: by 2002:a17:903:248:b0:2ad:9edf:7fe4 with SMTP id d9443c01a7336-2ad9edf81a5mr19440195ad.48.1771925897354;
        Tue, 24 Feb 2026 01:38:17 -0800 (PST)
X-Received: by 2002:a17:903:248:b0:2ad:9edf:7fe4 with SMTP id d9443c01a7336-2ad9edf81a5mr19439945ad.48.1771925896872;
        Tue, 24 Feb 2026 01:38:16 -0800 (PST)
Received: from [192.168.0.111] ([49.207.195.178])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad7500e19fsm104235835ad.59.2026.02.24.01.38.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Feb 2026 01:38:16 -0800 (PST)
Message-ID: <83decab4-a59d-434a-8ddf-2808d7081858@oss.qualcomm.com>
Date: Tue, 24 Feb 2026 15:08:09 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 5/5] arm64: dts: qcom: glymur-crd: Enable ADSP and CDSP
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, robh@kernel.org,
        srini@kernel.org, amahesh@qti.qualcomm.com, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        mathieu.poirier@linaro.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org
References: <20260129001358.770053-1-sibi.sankar@oss.qualcomm.com>
 <20260129001358.770053-6-sibi.sankar@oss.qualcomm.com>
 <e658b473-6f05-4f83-a730-e586068d8742@oss.qualcomm.com>
 <sgomjvhwnnbvuskxqfybczvxtwn2lourr5eq4mw4qyxp5s6kzc@ccgx4wn5wqi3>
 <24973bc9-a082-42ec-89f4-12758ddca136@oss.qualcomm.com>
 <yaunylao3nefmhbdovpfoymy63hjfjtvbwm5quqvdyk3enpno6@7rmpnx7esdhs>
 <8d96ebc8-67e2-424d-adbc-0948dd3641a0@oss.qualcomm.com>
 <CAO9ioeUSJQC685K47qMBn51r7APReO9T+h_K3bZ_94Uwn1unBg@mail.gmail.com>
 <48778fa8-b485-4c79-be1a-c70836f65f0b@oss.qualcomm.com>
 <lqt5k6w3peqlgvgeagp2v3yqtvqpaihsbkvu2hwfzel4j2whnh@qafj2mnrt2dq>
Content-Language: en-US
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
In-Reply-To: <lqt5k6w3peqlgvgeagp2v3yqtvqpaihsbkvu2hwfzel4j2whnh@qafj2mnrt2dq>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: GExcbMkyviGpX29FJ7kFnr1r_O-qLoBR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDA4MSBTYWx0ZWRfX0qUq0IMUoWzd
 a+ieFU6vpHdC4iSVzIMZqy+OTh0yiq9+1l8jGHtuLJB/5vg6OBWRaziLpgvui6llMRgpdSy+Qg0
 HG0aHvq+6fN3/4873YsGih+a/7allB+RSLkROosUF9kat6O0LyVWBuUils3jNCxqiHgzq+raCuC
 jWVi/jKaaQPFKxeIdesvp7lcCsaI9mec7KQ0oamFs66+FWOzjMlw/CYdiiffqBVXJzLal6J2QDz
 YXKsujNdHjBab7Zkuio3PvfXItBDiTSLD1l74skN/H5L4+o6LvThvsTda2IeghrYj82wkrXUa7t
 9EUDAlqomXLB4jfqwQ7qg7/TCmcYXV5uBPl75o18ojBAMStlb357Fjx/d/3CYmdsxxL9gUyiuaO
 arruVL6JOP7UwL9FW37wPBjuuBI/ipKKAakaGvTNTMbRm0dIB79VzFHOEl6CHwxlwUxpgD3QeMc
 KZ/DdcBYYdOB9tN7L+A==
X-Proofpoint-GUID: GExcbMkyviGpX29FJ7kFnr1r_O-qLoBR
X-Authority-Analysis: v=2.4 cv=WqQm8Nfv c=1 sm=1 tr=0 ts=699d718a cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=FDuvZuZHjihTmU/CkdNO9w==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=pNNgpXSRwlUzhS52UYoA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_01,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 phishscore=0 suspectscore=0 adultscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240081
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267792-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sibi.sankar@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 99D41184D0E
X-Rspamd-Action: no action


On 2/24/2026 12:00 PM, Dmitry Baryshkov wrote:
> On Tue, Feb 24, 2026 at 11:48:00AM +0530, Sibi Sankar wrote:
>> On 2/23/2026 10:44 PM, Dmitry Baryshkov wrote:
>>> On Mon, 23 Feb 2026 at 11:09, Sibi Sankar <sibi.sankar@oss.qualcomm.com> wrote:
>>>> On 2/3/2026 6:09 PM, Dmitry Baryshkov wrote:
>>>>> On Mon, Feb 02, 2026 at 11:16:19AM +0100, Konrad Dybcio wrote:
>>>>>> On 1/31/26 8:54 AM, Dmitry Baryshkov wrote:
>>>>>>> On Fri, Jan 30, 2026 at 10:55:24AM +0100, Konrad Dybcio wrote:
>>>>>>>> On 1/29/26 1:13 AM, Sibi Sankar wrote:
>>>>>>>>> Enable ADSP and CDSP on Glymur CRD board.
>>>>>>>>>
>>>>>>>>> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
>>>>>>>>> ---
>>>>>>>>>     arch/arm64/boot/dts/qcom/glymur-crd.dts | 14 ++++++++++++++
>>>>>>>>>     1 file changed, 14 insertions(+)
>>>>>>>>>
>>>>>>>>> diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
>>>>>>>>> index 0899214465ac..0eed4faa8b07 100644
>>>>>>>>> --- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
>>>>>>>>> +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
>>>>>>>>> @@ -487,6 +487,20 @@ &pon_resin {
>>>>>>>>>             status = "okay";
>>>>>>>>>     };
>>>>>>>>>
>>>>>>>>> +&remoteproc_adsp {
>>>>>>>>> + firmware-name = "qcom/glymur/adsp.mbn",
>>>>>>>>> +                 "qcom/glymur/adsp_dtb.mbn";
>>>>>>>>> +
>>>>>>>>> + status = "okay";
>>>>>>>>> +};
>>>>>>>>> +
>>>>>>>>> +&remoteproc_cdsp {
>>>>>>>>> + firmware-name = "qcom/glymur/cdsp.mbn",
>>>>>>>>> +                 "qcom/glymur/cdsp_dtb.mbn";
>>>>>>>>> +
>>>>>>>>> + status = "okay";
>>>>>>>>> +};
>>>>>>>> Please make sure it gets to L-F (only Kaanapali is there right now)
>>>>>>>>
>>>>>>>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>>>>> Hmm, looking at x1e80100-crd which references qcom/x1e80100/adsp.mbn,
>>>>>>> but the firmware in linux-firmware is (now) targeting IoT devices,
>>>>>>> should we use WoA-like names for firmware on Glymur CRD instead
>>>>>>> (qcadsp-something.mbn). It would match what was done for the SC8280XP
>>>>>>> CRD.
>>>>>> I think it's simply time to stop pretending the firmware is generic
>>>>>> (some fw simply isn't and some fw may come from different/incompatible
>>>>>> branchpoints) and include a board name in the path
>>>>> Well... CDSP is usually generic, except for WP vs non-WP.
>>>> Hey Dmitry/Konrad,
>>>>
>>>> Thanks for taking time to review the series :)
>>>>
>>>> The ADSP/CDSP firmware that got upstreamed to linux-firmware got their
>>>> functionality tested on Glymur WP CRD devices.  Given that the firmware
>>>> has already landed, can I continue to use the same name as the patch and
>>>> have a different name for other boards if something specific has to be
>>>> pushed
>>>> for IOT?
>>> Thank you for a prompt reaction, it took just 20 days. During that
>>> time we could have fixed WP firmware filenames, but... linux-firmware
>> Hey Dmitry,
>>
>> I'm really sorry that this happened this way :( but I was out
>> on vacation the past three weeks getting married. A quick
>> review comment on the firmware pull request for naming
>> change request would also sufficed in the interim. Also to address
>> some of your concerns there aren't any plans to push an iot
>> specific ADSP/CDSP firmware for Glymur reference devices.
> There are no plans to push or there are no plans to have it?

I've been told that the plan is to use the same firmware for IOT SKUs as 
well. Also in case they do update the firmware in the future, it would 
be tested for any regression against WP targets.

>> Also, this series already warrants a re-post so I can still
>> accommodate your naming requests with corresponding
>> updates to linux-firmware.
> Yes, but the linux-firmware has been released with these file names, so
> you can't just change them. You will have to provide
> backwards-compatibility links, which defeats the purpose.
>
>> -Sibi
>>
>>> got released just two days ago, so we can't fix that anymore. Now we
>>> don't have any other option than to use a non-standard name for IoT
>>> firmware when it comes later.
>>>
>>>> -Sibi
>>>>


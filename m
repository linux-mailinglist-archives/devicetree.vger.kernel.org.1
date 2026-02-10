Return-Path: <devicetree+bounces-264437-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UL0MEy87i2neRgAAu9opvQ
	(envelope-from <devicetree+bounces-264437-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 15:05:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F7D11BB19
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 15:05:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 578413005755
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 14:05:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DD40366806;
	Tue, 10 Feb 2026 14:05:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YU+3tYWy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="J0PgKl/q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE161B0439
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 14:05:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770732331; cv=none; b=tJN7YqvcrTgGQTF6OTfZNmh/pN3QKPP3OAOCtgSpPDPY7xiQuU4/JJPXLpty8L+F5ZvIMtfM+ExG/d1MOyvyvvQyFIZSAvBsz6PnJT7GGHJyQ3qESLqKo2765QfMhElT48y0xTRktnmffR+CElEHKJ9lGeBHn5VmPIBOHXuIQb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770732331; c=relaxed/simple;
	bh=oRAyvFW1gMW0isJ1W0La4p5JSkKe8QCw44uOPrWWIBQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bIXExShHAhTcsLRsNBLfiOAkAx/M5sn2fKsZJeqtj8oPDScbqD8EUl432QM9xrAlkwCFr10WgbyTAwJBiseMXJygNBt3L5O53qUvTdl9uEpEk5ir77ZZNz5GTyPgeZjGpFttATnvA+iRGPAuhOshR8FH7PDPPl2LNwXOBfSGHAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YU+3tYWy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=J0PgKl/q; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61ACDQbg2323635
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 14:05:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cLjK0kCKrATGfaPh5ElTpixsSxExbQnUw/DqSkDBNQs=; b=YU+3tYWy2leWxh8D
	GcgRO0HY6/Gntupiz2x0lk6uSchQM149lFqk7+FNoZ7onkZWldOE0vNIzBa9TxT9
	vVaZJrYU8AzBqC2o136vYWDeWRwfQPa2mrM8+kdHuqS8h1I1LaM+tug4AO6fuWTR
	NjllLNp3pIXKqZ9OfNNfeHNfWgZc0Cgk0WBkUckK9qn02HmCvbfSFY1TmozNxWrA
	ocfpkhM+r7FfM1KJeE0an+8RNhfQKARiF+jJ8+79mNbRD4iYca8pzZ4AYWmHLoVG
	hoMz0G8zX1g3UCERplX2zYuoJ3ntc9BMUQ88zi/iktjwp3ixM56FSvCzreiDORq+
	KoOePg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c84g2g9u2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 14:05:29 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-35449510446so1121004a91.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 06:05:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770732329; x=1771337129; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cLjK0kCKrATGfaPh5ElTpixsSxExbQnUw/DqSkDBNQs=;
        b=J0PgKl/qV+dxYzO3tT/lM36NCUYKPSZjKaCjC+6VqWsfKLfJ7AMPs1hDZuz9XySFa1
         lJL65XERRn8SPhwlQ7/AiBA+DOEBM3ogvgtqPvIFGlfvQFysOd/uOdU6O+jRCTRAFl/f
         aVnw19jxVgRJ1TD/yUPU8zH8hrqlBULl4scuT4gy9JuMXQqFcOYRJsG+pJgIuvRKql5r
         BJim4naMAxDR4Yu5IGf76NwZMBjEMkSWQWLxPW+pAhk4IxIyJtBFoQ/02KeMGrJZ4c1I
         X78i+KvSOVbtoOPyxZFwJETk0AVoDutCLZ+vF9PeSdNt3ghu900CkXitCancF28aWgtM
         LO5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770732329; x=1771337129;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cLjK0kCKrATGfaPh5ElTpixsSxExbQnUw/DqSkDBNQs=;
        b=EGjQ8agxFAb88gjUVB1p0WHvu5IsOudQ40Dj4PgKvYmA1GiVv0N4Kf9wdxuxTahia8
         Bau8EsY+inANEkSA3AIsZDGo1Z13aQqfp5Q4+khIFy25aT6k4Nm75zSrDvzn9wedhrFF
         YQMy0lnXMmZ2mGE4C5b4PaolbwYq42KUSP6h2oexOA4Mwi2wXgFQ7p/wkxmEHCqDgjLC
         oSSS2UtjXZlE+ePT835ygRBiajLK3T3YJ7wU4XgN7edeKWHj0UFcqsMEe73BA0/LJpo7
         PKRJh1QxcHk66+5VTyEXVD7np7FuhF/1fCbb8zlUW9/3ihhKaOnsYy4oo/crHktozOj0
         uHjQ==
X-Forwarded-Encrypted: i=1; AJvYcCXvra4T9hnWeoSTy6vmqqAHfEFmEtlSat9USp0tPAaGP7JINzMszXnGb/3Cz+sWZcm19HT9eNu0m9fA@vger.kernel.org
X-Gm-Message-State: AOJu0YxUHTmW/3zA2utFN9Fukj/BuKqlE32iei2EJ0c6voWIPyCSGC6W
	TJ1/ITUGHxiOGQ/MUnjks3qNmqmUGTMQ1BOEekyKegJmU2Vk06DvPMJDjYBBeN9x0JlJ6StNDUp
	r0f0OGy1JNW4OQ3eyFTbStdTSWYYErxfH9VSNUrofvVO2Qh64L2feQuUqv2s0DJL+
X-Gm-Gg: AZuq6aIRm3Z/lFfwZsvHogH3c+UWovzq3V68FVyIK48oX+WxxvQDdEssDtq8M7OVfXJ
	uCTghImQWodIyUJf9FAOJ3lLbrIchTbDu2950kBpmBSiGuClug04+EOs3kGH2WL/6eY7yA/J/5k
	2pbRXaPauPrEdssC2FzxksLwpUONK6VeXz8O6tSWBAAYjHSP/Q7xUbZy4drpT8foBFuGxg/ol1n
	kJhgdSlFdqGUtVSeaJO4HPlGY16/8VAXzxmj0NQAZqU0iKpsnIFCr31AHBP2/sKHzgu5BlXUkTP
	GfAIDxtOmVdH9ghMFtKHv450CXxhHkZwZByAq96op0bL22VDjS2hIrgZsCU9d9qe4zm6CrjJ7bI
	eUkWK4QmTgvMROF4nXrnSUUeMQs3UN7Ebsvwqb+LkVlXjlFEHQbpRFhK1
X-Received: by 2002:a17:90b:5746:b0:340:f05a:3ed3 with SMTP id 98e67ed59e1d1-354b3e2ea5cmr15423154a91.17.1770732328705;
        Tue, 10 Feb 2026 06:05:28 -0800 (PST)
X-Received: by 2002:a17:90b:5746:b0:340:f05a:3ed3 with SMTP id 98e67ed59e1d1-354b3e2ea5cmr15423114a91.17.1770732328193;
        Tue, 10 Feb 2026 06:05:28 -0800 (PST)
Received: from [10.219.56.177] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-824587621dasm10223703b3a.54.2026.02.10.06.05.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Feb 2026 06:05:27 -0800 (PST)
Message-ID: <61f166a0-44b6-a917-66e4-1e1230fa1115@oss.qualcomm.com>
Date: Tue, 10 Feb 2026 19:35:17 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v19 00/10] Implement PSCI reboot mode driver for PSCI
 resets
To: Lorenzo Pieralisi <lpieralisi@kernel.org>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Andre Draszik <andre.draszik@linaro.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Srinivas Kandagatla <srini@kernel.org>,
        Umang Chheda <umang.chheda@oss.qualcomm.com>,
        Nirmesh Kumar Singh <nirmesh.singh@oss.qualcomm.com>,
        Song Xue <quic_songxue@quicinc.com>, Arnd Bergmann <arnd@arndb.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Andy Yan
 <andy.yan@rock-chips.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Moritz Fischer <moritz.fischer@ettus.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>
References: <20251228-arm-psci-system_reset2-vendor-reboots-v19-0-ebb956053098@oss.qualcomm.com>
 <2dcd9e3a-0a40-0dfb-29b8-99b70b73a59a@oss.qualcomm.com>
 <9e9b9faf-7c5d-2e83-a8ac-37afeffd81d4@oss.qualcomm.com>
 <aXduTklGm6AOeaGG@lpieralisi>
Content-Language: en-US
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <aXduTklGm6AOeaGG@lpieralisi>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=fcOgCkQF c=1 sm=1 tr=0 ts=698b3b29 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=hP7UyYXQfnt6fAoQBTkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: lncBqs0Xr86IMYf1GfqbprDVRVVqX98h
X-Proofpoint-ORIG-GUID: lncBqs0Xr86IMYf1GfqbprDVRVVqX98h
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDExOCBTYWx0ZWRfX7ejSGDzcppEQ
 eHOX+K34raJfo0WNnbOmWRLG3qFMUWHuwB4/L4hQFubXcOzbOJbNIOsGpx57y1SE2aXnKFndRiK
 UbhkNee9nZFdtGOHn0ErAD51+FUpOT0H34prqwNe0T+3awsJN45ytDVPM9dddJlCBZzPYRpR+Fm
 SvZEdr3v4zpIFOhgPo4mvc/Yi/UHzTxPHbeGcalgDv7MhC8B5EM+/ZWjrOAdLKHx6CQdRTb+p0u
 zsv5KC8tgMlXM3mshbgp131c2va8rutC784cNGdiK9pd+YjE6w1m2d+z5i5azdSvIrFZibG5pY0
 gsANIMFUXj6V+j0pWGJRF9ne/rD1z9L0TFnNPHzPxJRKZZr8lG88CdYuoPpYDVaF6r7Cg20QXaY
 aWwzbPnIrU6FsMRTebeaD+XOC4zoCitOcViRnBQG+OVwYWZuZopoxi6QAZ22DEYZQ9wSy5oUS0e
 oQV3gk//p/04/sJwrhA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_01,2026-02-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 phishscore=0 priorityscore=1501 suspectscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602100118
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
	RCPT_COUNT_TWELVE(0.00)[30];
	TAGGED_FROM(0.00)[bounces-264437-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[broadcom.com,kernel.org,oss.qualcomm.com,linaro.org,vger.kernel.org,lists.infradead.org,quicinc.com,arndb.de,arm.com,rock-chips.com,gmail.com,ettus.com];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shivendra.pratap@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A1F7D11BB19
X-Rspamd-Action: no action



On 1/26/2026 7:08 PM, Lorenzo Pieralisi wrote:
> On Sat, Jan 24, 2026 at 04:08:11PM +0530, Shivendra Pratap wrote:
>>
>>
>> On 1/6/2026 4:38 PM, Shivendra Pratap wrote:
>>>
>>>
>>> On 12/28/2025 10:50 PM, Shivendra Pratap wrote:
>>>> Userspace should be able to initiate device reboots using the various
>>>> PSCI SYSTEM_RESET and SYSTEM_RESET2 types defined by PSCI spec. This
>>>> patch series introduces psci-reboot-mode driver that registers with
>>>> reboot-mode framework to provide this functionality.
>>>>
>>>> The PSCI system reset calls takes two arguments: reset_type and cookie.
>>>> It defines predefined reset types, such as warm and cold reset, and
>>>> vendor-specific reset types which are SoC vendor specific. To support
>>>> these requirements, the reboot-mode framework is enhanced in two key
>>>> ways:
>>>> 1. 64-bit magic support: Extend reboot-mode to handle two 32-bit
>>>> arguments (reset_type and cookie) by encoding them into a single 64-bit
>>>> magic value.
>>>> 2. Predefined modes: Add support for predefined reboot modes in the
>>>> framework.
>>>>
>>>> With these enhancements, the patch series enables:
>>>>  - Warm reset and cold reset as predefined reboot modes.
>>>>  - Vendor-specific resets exposed as tunables, configurable via the
>>>>    SoC-specific device tree.
>>>>
>>>> Together, these changes allow userspace to trigger all above PSCI resets
>>>> from userspace.
>>>>
>>>
>>> Hi Lorenzo,
>>>
>>> Is this patch series now converging towards the design changes you
>>> proposed in v17? We’d like to conclude the design so we can move it
>>> towards closure.
>>
>> Hi Lorenzo,
>>
>> Can you please review if the design aligns with your proposed changes?
> 
> I will try to do it this week.

Hi Lorenzo,

Any pointers, if the change aligns towards your suggestions about the 
psci_sys_resets?

thanks,
Shivendra


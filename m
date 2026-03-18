Return-Path: <devicetree+bounces-277117-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MKsxIBiBumldXQIAu9opvQ
	(envelope-from <devicetree+bounces-277117-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:40:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7522BA102
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:40:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E8532307B7DE
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:39:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C9313932CE;
	Wed, 18 Mar 2026 10:39:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GDu7bQQp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DV72IvRa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A866378D98
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:39:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773830366; cv=none; b=SwQOrH+GKTPY8eJAQdEzleW15Wdaw+MdZheF3e+WZiEeEjYt4Ay0G9PDK9xl+LrFQijmhxyAybcXcNcy5S9/OhNT7zLhcN/4t7xB52UJ1LeARihHGNWoydxyqA8iuzEi+MJf/JOGcNFa1GGp/hdb3rpsUvx7gampcU+PboXz17s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773830366; c=relaxed/simple;
	bh=Lu/1Gg8AcMocYblP2/duop3ZtFJxThXGBBLZjOrc7z4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tRR1Sln653imuROuKeoiawZOuV/Zwzz7897y0x92C3lliYOZ0Ys1mkONaDzf7GsilurfYple3eYMkg2+5gD0K7ix8EWS3U0QCo8JdzgUnt5eccHEFOa0gkFeFtyEeK165/P5IPyNx483kJpln4nG/vv+wYWRs2mDnbQxmWcZIHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GDu7bQQp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DV72IvRa; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I773PS2614274
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:39:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZHCpdutiIPCDZe+ZxRsP2OGSZ1DdSpbzypkIBafBf9w=; b=GDu7bQQp8kU3xilx
	vimp/0nqTr3r4KyTjQaIfFFSxP+/Lpv+Evn806VhWahbu+1rRNhxiauk3EiWKOh1
	Vni9DfG6utPiv9mOeO4nsocC93yZZYTUyn8aqjvvCZWerCiXy7j1vCnnDUZjmgoi
	IHDvtf75wPK0yDFT48penoWismdDG6i2y3Vm0AQsVtN4ikXnN46IrYObXbcUp1K8
	S3hpapmvBvmaak7zibxupSi1ea31CwRmDUV33UIujA9Ijv4Lq3YPajv0VNFR77TS
	qkVQeMTnCDXT5B5UwnQ+Oz4vDOHZ/94/dbMlvllGZlYrj/e/tWEcB4X5hVJkgJOg
	ia5o2w==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyqcdrwev-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:39:23 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2b06395b8deso28045885ad.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 03:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773830362; x=1774435162; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZHCpdutiIPCDZe+ZxRsP2OGSZ1DdSpbzypkIBafBf9w=;
        b=DV72IvRaihcfqn8cXEfgNc9d08CkSCaO1Hic66qSh8l907OsyF53kP9ycsfQdOxydV
         2A2G/7/8LFAPPEqfWYmQwCc5pJaCug/YLniqMcVd5h6gRqdyU2MGy+gS/t5PGOUPzezc
         zRvrBI9sPvyrVm1KPM0g0SEs6tSRMHesEAB6U24nfuh8ryRyCYFiZiWWi2cqTzn5vjFu
         ZhDpVtdwFJd8FC3t/bH07/j16zVpVhGJFarcdjTkFMPPhQ9FOzZyYFLxwD6bkynTFzzT
         SS6ZBhZxChhkwxOI98QNxPzd4ESfiYMz1rv1TDTkxMVv4O0ZbIovZd3frjkWbK/WRrMP
         Be8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773830362; x=1774435162;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZHCpdutiIPCDZe+ZxRsP2OGSZ1DdSpbzypkIBafBf9w=;
        b=FYPkF0rOrLoFYIdbZMe88e32xbT+T0JoIaUIas4EJ9O02ePRmgZbDS82RcmyHHWJbC
         4Sl5pKQb4Ap+1mkOiz+pOnE2/Y/VSSTKuOmb5jCuAb30av46BY5nCshYNOf3v2C5tCuq
         E44EGEfYztP1t/sKUgGmXJXfUO+QUm8c1vOUyy1E1rrINT9lqFu+JVltSPqD7sSz5WQ8
         36RbMzmgS804vQAmRNNj5ZbKek05nUg47tRkAw9x9tFmF7xqVOnQH7pC+EOOGNQ4Q6N5
         jt9n5mTzNCO5ftcPoBlIG5MnyNpx6yRlLJ65GTMhumogEAPw0omwc/xv/yVN4jtm5yMN
         IgiQ==
X-Forwarded-Encrypted: i=1; AJvYcCVSKoPYR4dF9fiJHRD63ffD7gpaMN3bnCLSItU3rvdjIoPu+zpTcraenB9VXiUgXxuDmPkwVF7MaNs/@vger.kernel.org
X-Gm-Message-State: AOJu0Yxv6jdbsSDVuJ97SE1W7HZGvkT7BpjvhUotEnjUoLc/lR9Eo7vy
	PR8BzlFb3Pa6oSuOxss5Z/g2ceUfD9J19etQw3jZbOkCX4a2qNUyawoHaoMgtq40+3b+0T3qLiS
	5e0SXkXpaElRvDOwO9ba5jlD1WJDo2Sfr5uBPtKQBBe5v2SKmCX55b8hfe/zjtPsK
X-Gm-Gg: ATEYQzxpIq3PW/qmK/gQkaVEfQOQKepHTYVbH9bXjoubIU8Zcy2yN1zGFSKagNATogL
	i62F7alLOInfgYgKrSif9IMs5pdJb+zddlU7+icvPqwcO5a94UgVgOBfVbCPHpqYI7aa2id5SM/
	Ncan2s4vBv3Wed0aOHUT70Pvm6T5QZUyMFVj6/MqNbjDQ1iC/+9Q87noX6vtU+wCpyNRWi8G72q
	OncapHHXrOudlmTY/BB547k6+BuLuVy8IwGLaf2qlGM73c9HrUMkflxGTC1pS8GBMjOjprI5O2p
	dih86zG1jiLZOmhLjUOJt6oTXQV8Kes72A7FaHu9NeK3/vowP0EIaxn9tNj1767/8IW61KwiUfb
	kaf7UwikmfJ1wkC4mYRfZWqrh95HK0Cj2A2a9jt7jGOD54BkkIrg=
X-Received: by 2002:a17:903:1112:b0:2b0:5be9:f423 with SMTP id d9443c01a7336-2b06e40e3b2mr29694615ad.43.1773830362401;
        Wed, 18 Mar 2026 03:39:22 -0700 (PDT)
X-Received: by 2002:a17:903:1112:b0:2b0:5be9:f423 with SMTP id d9443c01a7336-2b06e40e3b2mr29694415ad.43.1773830361919;
        Wed, 18 Mar 2026 03:39:21 -0700 (PDT)
Received: from [10.217.223.121] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b06e419270sm21556485ad.1.2026.03.18.03.39.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 03:39:21 -0700 (PDT)
Message-ID: <8d210e75-f471-484e-8a0c-9b8ee7900106@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 16:09:12 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 12/12] soc: qcom: ice: Allow explicit votes on 'iface'
 clock for ICE
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Eric Biggers <ebiggers@google.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Tengfei Fan <tengfei.fan@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        David Wronek <davidwronek@gmail.com>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Melody Olvera <quic_molvera@quicinc.com>,
        Alexander Koskovich <akoskovich@pm.me>
Cc: Brian Masney <bmasney@redhat.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Kuldeep Singh <kuldeep.singh@oss.qualcomm.com>
References: <20260317-qcom_ice_power_and_clk_vote-v3-0-53371dbabd6a@oss.qualcomm.com>
 <20260317-qcom_ice_power_and_clk_vote-v3-12-53371dbabd6a@oss.qualcomm.com>
 <8863f38b-51df-43ea-995c-08b9fb04f4dc@kernel.org>
Content-Language: en-US
From: Harshal Dev <harshal.dev@oss.qualcomm.com>
In-Reply-To: <8863f38b-51df-43ea-995c-08b9fb04f4dc@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA4OSBTYWx0ZWRfX6+Pl6ItALBew
 aefmUxWKIJ/P8pNaGpU8t8f7n7IfwUbuCvRly7xQAcVrpyFTqszrncVjdcE4PfJu+IiZIP3iIMe
 5dpVXhlInLUiB62OCRmXuq/TM2VtJvW+1daAq3+tRDtj/6jLV2A7sjVCJWtfm6yJaJnahIFUXTT
 qXQClaRs6ixzLScCfYjhEN6YflZRb3HRXtLRJV8t59svSGWdIUMVvvu1ghrImC5hz3EJjIapDY0
 QW/pOHUYq0sCZuLlSd4xL9/ZubchPpRZEmsfer+FxkkViy6TR+wdYVP3VUkF42GnUCsxK/QJHp4
 49g/jKuO1LEGg2AaO9IZYt7jEzqA4aTLrltSY3Tuet5r3hlToqGeP3u9J9dLRb2tSAaruSThpjC
 PjzhA27z3DccvUVvePf0WRaWT34FSJLEcpWO9vb3jrEvxscwNeJS4q1tHZGgON9wMu3RwAaH0Qz
 QmO8tAdPafDSyY39nog==
X-Proofpoint-ORIG-GUID: xzqAlHBI2xTb0-o9rGMZ3VIiOT6akQTz
X-Authority-Analysis: v=2.4 cv=H87WAuYi c=1 sm=1 tr=0 ts=69ba80db cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=7T9o6mVONip3bYQ_lJkA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: xzqAlHBI2xTb0-o9rGMZ3VIiOT6akQTz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180089
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277117-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	FREEMAIL_TO(0.00)[kernel.org,gondor.apana.org.au,davemloft.net,oss.qualcomm.com,chromium.org,google.com,gmail.com,fairphone.com,linaro.org,quicinc.com,pm.me];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[harshal.dev@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: DA7522BA102
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/18/2026 1:03 PM, Krzysztof Kozlowski wrote:
> On 17/03/2026 10:20, Harshal Dev wrote:
>> Since Qualcomm inline-crypto engine (ICE) is now a dedicated driver
>> de-coupled from the QCOM UFS driver, it explicitly votes for its required
>> clocks during probe. For scenarios where the 'clk_ignore_unused' flag is
>> not passed on the kernel command line, to avoid potential unclocked ICE
>> hardware register access during probe the ICE driver should additionally
>> vote on the 'iface' clock.
>> Also update the suspend and resume callbacks to handle un-voting and voting
>> on the 'iface' clock.
>>
>> Fixes: 2afbf43a4aec6 ("soc: qcom: Make the Qualcomm UFS/SDCC ICE a dedicated driver")
>> Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
>> ---
>>  drivers/soc/qcom/ice.c | 17 +++++++++++++++--
> 
> Why the driver patch is after the DTS patches? It is explicitly
> documented as no-go.

I will re-order this patch to come after the DT-binding patch and before
the DTS patches.

Regards,
Harshal

> 
> You do not understand how patches are being applied and you think you
> can fix inherent problems in bisectability by creating incorrect order
> of patches. No, you cannot. Read maintainer soc profile and entire
> development-process document, so you understand how patches are applied,
> what are branches, what is current RC and how kernel is effectively
> released.
> 
> Best regards,
> Krzysztof



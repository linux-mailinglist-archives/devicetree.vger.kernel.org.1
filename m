Return-Path: <devicetree+bounces-266678-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id JUVKBi4ll2nivAIAu9opvQ
	(envelope-from <devicetree+bounces-266678-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 15:58:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C29F15FDE3
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 15:58:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CC957300F175
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 14:58:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0F36341650;
	Thu, 19 Feb 2026 14:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ICuGd9uK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q3gKEg7h"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D48AC341060
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 14:58:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771513129; cv=none; b=YhPjXzC8l8smRlQ/bMUkxTfV7zzOPOcKghhTaQZ9eI8pG2SB+ldDs7fc50VfLmnAbB4bOezJQnm6xY/5mS1uZAX45l4VW5OT86TZBkFHW6qAi0oqOWETcJm00nyl0eNcEm450XjyHkacSGfyybG/Hw2vkvMur3C5oyF7OFzo7HI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771513129; c=relaxed/simple;
	bh=XSqg71SAS4s2Mq71PZrvscXdeTD26R0DGY1v33l3erU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sktO5nOxkt5fxYXL15zEi50PwQrOxE3NAGsZY8SIirrehSp1Y1r1k3Wz9U4YncXfbCUhiffLEqK7THRfOhiOX7qLgWbmD5EksMz8udbbJ4dy/8BA907hrbcNWsBXbHp0Sq4CVswepbZPLOav3VFa3JS6/Hs1xhCqQjjTAgoJf10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ICuGd9uK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q3gKEg7h; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61JBd0oe1924961
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 14:58:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BZMRtc+BiF/gI74TfCZJc35g7vW2H2eXsMdnM71fw60=; b=ICuGd9uKb8AsrBJw
	XLuYJN/+IVf3a6FIm8IYbwfjCnWOjoV4kvpIiWgJgYG8NBv0Pl1qc86DmBLle4dE
	kV8lrhcvZ/d3XFq80UxrFTB4T84QjP7SgkiCMrvDPL5BOY+gR0KZbYLEKIcNvPES
	BVDclVv2d9eRugvLvp1yRPrc4kycDTbra1nuFgGjTAhU3vu4b2dplK4c89YROMZz
	jMCaeHGaoG20Thg8/N51bBijsrREhWkcwBMwASUmacYqjurLEqzrr/Xe51lQtmxz
	yvhzIZiq9pFzl1KAHsvFQe1gx+s/IzQpdtRoUyZd3VzijQJf6r+F/X4CSrQYYXmB
	0PD+1Q==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cdqdga2a2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 14:58:47 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-354c44bf176so1010003a91.0
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 06:58:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771513126; x=1772117926; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BZMRtc+BiF/gI74TfCZJc35g7vW2H2eXsMdnM71fw60=;
        b=Q3gKEg7hbb9BE2tS8kPwJWYasPswYS/57USoCSCDoYlaJj2KJkLThCOstVEg9DK3Cu
         V8MtLlEh4sZIAyzAmXvD3CSnS/fq7yMnggPCc6nU9GPAC0CRX2u7y1jAh/yyzBWo/w1/
         UIDJnOZKLi5o6dQEwhySPLNnfrlTp7vE0bB5ytP291hamXpSKKh6FdGjxIpD3dktJbpD
         Rtlq0/HFw9mZMN/8MYRtIjqgSyL1YTi+BxLBaZ8ij34c3wvg3TRBzC04prPxWsJ8wh5s
         XNzoMchVD2H2TdK7wUhzNvRQku2dEHa8N1L7qF7JQOlJ8FNGQClmlv8oojfX05yMRm7V
         0CYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771513126; x=1772117926;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BZMRtc+BiF/gI74TfCZJc35g7vW2H2eXsMdnM71fw60=;
        b=LI4d4JDtu9nnPUHfRxdQmUynyS8HnIbwC0ukXPSzzDB1w268EgLpvmzEEGQkwWK1XU
         DzN/vdOHtZaYQYNoG1BAu8y2v7W/PTf7ktn+32FIbSYkmPhla0O8750f7W/+6z5BKg8K
         Z2h2GWFXUrP5c/WOHd4Gs2rLpqu59dblh0UlkXnnT7MmeN3bhBHccfw7pj2oOvcg1SoM
         mgFMh+OzwTT5l821B0Gzxxb1FxBDW7kDIIuJrHjs6J5pRssb5NveN5/ei4Bnjl74hbaN
         VMtIOyZtBVSOYycgllqOHtm2kfjbeQG5rUbAJSD9yuoIRss961d/YNWRwb7fscXKsJVq
         /ZwQ==
X-Forwarded-Encrypted: i=1; AJvYcCWlbaqM1zuEgoGsBqZpEQKl8hKeiwuIDkdmvSyGxo8NOW1e7vNqH9so9XqCQjI6iykMvU16B/s7o4HZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwF5HLsV530Kke3FcX5ZUdNQWJlcDqyRIe0yNItAxs2sa/jnBwK
	fTVp6C5jslAcFeiaGpGMbwqTsZ9nir0sCyJPFcmA7FBxvrGHavSiIsq3vIRe7C38/VYnW4iZZzk
	qys2mClfCr/OHveivMGoJoKfn8PiSVWeCD8SpxIvwiOL7Qe+ob0j7MAfrxO7qAJQC
X-Gm-Gg: AZuq6aJKxYLvy0EqU+aD3JlRLLxBV9iLQTehOYy02JHmAPbWM+UQMXQPLVWnM7JvH1k
	XKYSQw78sZP6KGXU+hpdo1JYJRQu0eQBTeRfx2DOY18VytQBTEaZeGJMgV3J0GwZyPS90c/esnJ
	cqK/4dEpqIjJUo4qZrSzv3vwrmM3ghXaG2JPH2Fd+6/VCZ3EBSX58RB4J1+1ttmobUiIHUgiIik
	Q+h1XuVBUKmlPQBZBYOxn7aF69BmTLoJ11pd0+VxZPUAfrjNAiLdLXA6HKmFpjszRhaqemnvJsr
	t47WyqtnI+Qeb3/LkekPlI5LP6ZHQQdmIC2ltCABG98Et7/Ieq3KFrwoR0xjrkLl42E19I3HDON
	MLFnewTm5h3o4rHmOcQw6HDcHpRS7FbnA/poRuUvc2ajGdDJ/ymGmmg==
X-Received: by 2002:a17:90b:274c:b0:343:c3d1:8b9b with SMTP id 98e67ed59e1d1-35844f85b15mr15779180a91.19.1771513126565;
        Thu, 19 Feb 2026 06:58:46 -0800 (PST)
X-Received: by 2002:a17:90b:274c:b0:343:c3d1:8b9b with SMTP id 98e67ed59e1d1-35844f85b15mr15779151a91.19.1771513126008;
        Thu, 19 Feb 2026 06:58:46 -0800 (PST)
Received: from [192.168.1.6] ([49.204.108.219])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-358970484aesm1301630a91.4.2026.02.19.06.58.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Feb 2026 06:58:45 -0800 (PST)
Message-ID: <6acfbc33-cdeb-44ce-8f80-90dc18573464@oss.qualcomm.com>
Date: Thu, 19 Feb 2026 20:28:38 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 06/13] soc: qcom: geni-se: Introduce helper API for
 attaching power domains
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bjorn.andersson@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com,
        jyothi.seerapu@oss.qualcomm.com, chiluka.harish@oss.qualcomm.com
References: <20260206174112.4149893-1-praveen.talari@oss.qualcomm.com>
 <20260206174112.4149893-7-praveen.talari@oss.qualcomm.com>
 <119f619e-9f3d-4c21-8cf1-a8b4e1024ed2@oss.qualcomm.com>
Content-Language: en-US
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
In-Reply-To: <119f619e-9f3d-4c21-8cf1-a8b4e1024ed2@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 8Tas_OI4GyVR1_1aD-Jm_nB7lavMpw4i
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE5MDEzNiBTYWx0ZWRfXxuebYTWCoN0c
 JNM0SWF5u7nLAPY9exnbj9DOQpOnqGCmriabtmgdQ/8JEp7ITHRn+8yYVqvQvJCe0mN+YgeXyFu
 s4Qr1injVplVG3FTaxHnb46BTkVHBUscp9f4NdyuobObLtqpx8elGTvIKvpDixMP83IxMAZcS3I
 lhC9Sk5HzWvusWzq8orQCRiVE98ATjUst1XVkEnXDckROIOkxLN7x0hb7hYESDZp4afW7ucDchl
 lsbseNmOWv84pO0X5eMZVl+rnUhhz/xWc4Adv2Ks2o/XL18c6yrf/vSeYf0+HgfCZcGw2TCqn/Y
 lBl3hGfOF7PeoBjtbgpmrl/C2oAvSnjjhu6aAkDJDc+4e0s6CoewqoRDW2dnHVUwicBoh0SvwLL
 Qm7zk0GSyVe7KQS7RNxqTrabbZyobBoRGTyR/ZjIG88m8149xU5C3YvqmTWawjcmPJ/BMVw8HBd
 VpmxCqVXjGcUBWrpztw==
X-Proofpoint-GUID: 8Tas_OI4GyVR1_1aD-Jm_nB7lavMpw4i
X-Authority-Analysis: v=2.4 cv=W/M1lBWk c=1 sm=1 tr=0 ts=69972527 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=SEi2w9hYDuVaAARFuk79KQ==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=RFm3ULBN9CpRR-2xPD0A:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_04,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 adultscore=0 malwarescore=0 clxscore=1015
 suspectscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602190136
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[21];
	TAGGED_FROM(0.00)[bounces-266678-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praveen.talari@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9C29F15FDE3
X-Rspamd-Action: no action

Hi

On 2/17/2026 5:09 PM, Konrad Dybcio wrote:
> On 2/6/26 6:41 PM, Praveen Talari wrote:
>> The GENI Serial Engine drivers (I2C, SPI, and SERIAL) currently handle
>> the attachment of power domains. This often leads to duplicated code
>> logic across different driver probe functions.
>>
>> Introduce a new helper API, geni_se_domain_attach(), to centralize
>> the logic for attaching "power" and "perf" domains to the GENI SE
>> device.
>>
>> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> +int geni_se_domain_attach(struct geni_se *se)
>> +{
>> +	struct dev_pm_domain_attach_data pd_data = {
>> +		.pd_flags = PD_FLAG_DEV_LINK_ON,
>> +		.pd_names = (const char*[]) { "power", "perf" },
>> +		.num_pd_names = 2,
>> +	};
>> +	int ret;
>> +
>> +	ret = devm_pm_domain_attach_list(se->dev,
>> +					 &pd_data, &se->pd_list);
>> +	if (ret <= 0)
>> +		return -EINVAL;
> 
> I think we should preserve the original retval for the < 0 cases
> 
> For == 0, this can mean a number of different things.. but in this
> specific case (where we always set pd_data.num_pd_names == 2) it seems
> that it would only be an issue if dev->of_node == NULL, at which point
> this function would have never been called

I hope the below is acceptable.

+int geni_se_domain_attach(struct geni_se *se)
+{
+       struct dev_pm_domain_attach_data pd_data = {
+               .pd_flags = PD_FLAG_DEV_LINK_ON,
+               .pd_names = (const char*[]) { "power", "perf" },
+               .num_pd_names = 2,
+       };
+       int ret;
+
+       ret = devm_pm_domain_attach_list(se->dev,
+                                        &pd_data, &se->pd_list);
+       if (ret == 0)
+               return -ENODEV;
+       else if (ret < 0)
+               return ret;
+
+       return 0;
+}

Thanks,
Praveen Talari
> 
> Konrad



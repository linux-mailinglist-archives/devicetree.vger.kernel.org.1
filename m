Return-Path: <devicetree+bounces-260856-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eEp/BCpDe2liDAIAu9opvQ
	(envelope-from <devicetree+bounces-260856-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 12:23:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BC941AF934
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 12:23:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0D84730146A4
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 11:23:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8079E387343;
	Thu, 29 Jan 2026 11:23:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DpXwKRLo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YZaEPUVI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00F023859C1
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 11:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769685794; cv=none; b=TBtB74ddvS9I/wB4RyQHOQkZ5gmH0mH51BQA/cvsAGgy4abn8TEzr9Flx9qP39grrlTzVEvtaJtEZIp+/URCt0mK1SwdbHh9C82dHdzJ3TB0BABtGknrzaWnXsy25xT9U9GDxpemquJ2Mn1xiLWxKeP2yE7HQ2KlOiGVoaLgUAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769685794; c=relaxed/simple;
	bh=3VBOmqZjLpEiGSf4tHnAURgDQlc/nXD9mswtFb9LEnQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BqrsMizfRYVZjvTGngADY+JRhsFdyZIZlfuHoRtLMqridVkbzjtH5FaVyY2jKUIQKWnbPv9+Y8l9gInwwKr91JYRZp/NOuHam61eSp4VmvUpZCbQ8RTfCW4tRDrA5k2gUZxL2EMN/K+JFwttG06Jsl1JP4JPQah8TMIHj8yFT8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DpXwKRLo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YZaEPUVI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60TAjRSF1429840
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 11:23:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QtO9gSBqOOPwTxOr9h2xrf5O2xbqDfwUpju3wOHkZ7M=; b=DpXwKRLoc8ZFrWGs
	EYbuKnAZ3NCO0SWkInUiWW+VwQ8hMM0CmpKWF5FA7PdExPvDDMKnzhexc95DgyU6
	DMGqt4CljmqOVIL8bJarguY+LJGLSot682jlmVsg1DqTT0XehIKoTL0B93mDP2I9
	mGcsCwZLAe7aGxNH/sQw9PTS9tE35Kn9RjtGLK68C9GCA7OCe8OQN0GeFcMIv/oJ
	h43gK+MNMzI7PWqDAkBiEN8/WUi4FnxQ7tWprBSn6tXKnO6tFndcrxxn5YdPEZKO
	lSmKLoyDWvA9izJZUvraF2inxLunfcW5K7mqXhd4pwubFiXX1/T9qJdOPHcOXesH
	XGfwnQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4byydh1dvw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 11:23:11 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c70c91c8b0so29395685a.2
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 03:23:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769685791; x=1770290591; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QtO9gSBqOOPwTxOr9h2xrf5O2xbqDfwUpju3wOHkZ7M=;
        b=YZaEPUVIOgTeIjm1/CsyrE1GLCCBlo+XfBVuZO3lSeysuQoI015HKIiKHxomtgenSO
         7FcqkQkXErbm6DTGEIBekDYFepB9PXS3dG5GhDR4f5UqH2z/LaBaZdlnVZlalnssMoYB
         S4fr/c6N4OkmjXMZwD8twjJuQOAFNqK0KWTDqLph8qSG3oFsm5Yaet8pAiDbFAjJLxgz
         AUGWEJVtVF0WNK2qZJ9E0tpuueLB0CcjpRxEWieFkJ+zQ0lnLh5Jc1nPLZk3ePTYyflw
         e2hJDEllGgnUhBhYyO6uVZU5Q8ycbKFFTwGZpW1Wl5Mue0CUzaDFzXcXoIkSB6F+mgXb
         enUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769685791; x=1770290591;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QtO9gSBqOOPwTxOr9h2xrf5O2xbqDfwUpju3wOHkZ7M=;
        b=suCg245OxThe3jAjaosI/qjW2JCa9FXBQOAEI3APb/a3PhmS9eZNgdVfH38h5Jgffp
         1Hpgnt3fu+nG7tkKAPD0pOrI33JfueOQr+F7iUlOglmWROZNrA+wf6V44rDfvqUoW1lw
         dZsdk7ST8QGAtj0ZrA5/fmde6FXEb8lmhjdoNJis0e1axoXBIabpsR953BpaJN7FpXHB
         /ppAQR+UrHTDJTVw4+XfDmA3P9zO/fop7+n2AtHIul7UKVxP4jNRiYU/cKREjPsXUjHX
         pdZ/gt6jOxfyWXmohptQmYRDF9obacRWemHTqzDWoL9dkroJtpBr+ywmMeMyewAODjuI
         mfrg==
X-Forwarded-Encrypted: i=1; AJvYcCWf3jGvXENXUBTIrJ5fAwHCbD1i/lfKuYuJWOcnMIRKSzusoLqWuQO1jDudeO2iAjPeLkDyPK/plySN@vger.kernel.org
X-Gm-Message-State: AOJu0YxjniofApOWDeVvvccMwdsnXA6dZXin+zmbwVbCUYBSd+wyRYwB
	lZS8RxcjeXd1z09WnE3PBOEJuef29SBS7lrZADCFhl/W5BgNgOJ+9znT5mahd9G8CEce/qDzhy9
	4xtPHFcjWxn243Ke/cuSEUfOVGiMu1PXBkt24ojzVYjPWYaYd0hg0kbeiYNy5X2oO
X-Gm-Gg: AZuq6aLibJgoCJ/gAC+rqHGtgNBrqiUcjvCTHCfVS8d9Fmea7QY7Xyu5yvv5TNf2ym6
	Q3KUi93lpg5aZtvkWESctDfohJbn4E3q8xWo9kxydkHwtFCEM4neJu7r0m7no9DC3cs9upipPlb
	DcEexanaEQaUoKzGt13UpSaQEl8uMXTJ8FPIy9fhsXkq4UMSOHz5BTk2F/jXRFpSUmQxBYKk/BE
	SWnVf3l814u2/OLk2pLW6jUi/gYMb/94TtpjfYBkQrasqFaw7YP9uN3Q0jvCamJxgjr2nTVCLlY
	B9HXiXHJrFJyzNfsbQHHI6w0YGdEjnA5/2VVaLmXLa3NUrU7A0lbdxf/nzx2VUyxG5UPLCJK9fn
	owxYPDNlNjU5KOekYdYNTKBUbtwb/YpZhA2FxyKYVTF62MBxoElHEXWf8dm4CnnRSLRU=
X-Received: by 2002:a05:620a:199d:b0:8b2:df32:b900 with SMTP id af79cd13be357-8c71ac58350mr349976285a.4.1769685791091;
        Thu, 29 Jan 2026 03:23:11 -0800 (PST)
X-Received: by 2002:a05:620a:199d:b0:8b2:df32:b900 with SMTP id af79cd13be357-8c71ac58350mr349973385a.4.1769685790573;
        Thu, 29 Jan 2026 03:23:10 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658b44527eesm2740606a12.9.2026.01.29.03.23.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jan 2026 03:23:10 -0800 (PST)
Message-ID: <76c24508-bb75-475a-b973-d7ad18c302ce@oss.qualcomm.com>
Date: Thu, 29 Jan 2026 12:23:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8550: Update EAS properties
To: Viresh Kumar <viresh.kumar@linaro.org>
Cc: webgeek1234@gmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
        Lukasz Luba <lukasz.luba@arm.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Xilin Wu <wuxilin123@gmail.com>
References: <20260128-sm8550-eas-v1-1-fb80615bed5c@gmail.com>
 <fec5907a-5619-4997-9e8f-034efdd31993@oss.qualcomm.com>
 <l6vdnit4sd5rx3k236dwrmywudkmydxfjprn2c5i7fsfmlqfnu@tabbezrje36b>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <l6vdnit4sd5rx3k236dwrmywudkmydxfjprn2c5i7fsfmlqfnu@tabbezrje36b>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: CP9slioasEJAtsHxSrY41gcYwNZN2leH
X-Proofpoint-ORIG-GUID: CP9slioasEJAtsHxSrY41gcYwNZN2leH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDA3NyBTYWx0ZWRfX8uwi5ZZAWGh5
 rKmnDSglAAcn4bzF3usrETULWxTE+2V62I4Reu/jYtOnmEcnIiu2mAXLhJ2LEmIUPX+9bZQbXGg
 wzrm1A3dKlaVrU//6LpepPEDqPw06Ge07XDRIjEdZeuKa3Kenrltz+QGecnDkLlqMqLOFiiTG11
 HecpYl4UeeK41i9QEj/kdY64U0A80QfWOOeNGsxZXwnCwSHdQr9fEMveWnTeR/PO52ECPTxt35W
 5gSORGA+S1TXfOuBwK4hNq0kM11iKiYcSny+1zqFMEOU7blbPa1D4+EGu4no0RHfe9uysrKlkpw
 4HVdT1ugBKUv+KWfz9F7O2N2RCXd20KTBSrzxcfEZxDgPUVJ9VoAgqwJRAblsh9txCwN34tNtAy
 P5S3iG4OK/J0p8qzKuPkezlO7a2zmersnnfnCKwyTMOG8r511k1BNSHGlyP8vZ+QsmCmRYXLKxx
 giSScCPUCPqXQgkFkdw==
X-Authority-Analysis: v=2.4 cv=Cs6ys34D c=1 sm=1 tr=0 ts=697b431f cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=0Xt1OXwk4LvI3a-bI1MA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-29_02,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 spamscore=0 phishscore=0 bulkscore=0
 malwarescore=0 priorityscore=1501 adultscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601290077
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,arm.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-260856-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BC941AF934
X-Rspamd-Action: no action

On 1/29/26 12:05 PM, Viresh Kumar wrote:
> On 29-01-26, 12:00, Konrad Dybcio wrote:
>> On 1/28/26 8:11 PM, Aaron Kling via B4 Relay wrote:
>>> It should be noted that the A715 cores seem less efficient than the
>>> A710 cores. Therefore, an average value has been assigned to them,
>>> considering that the A715 and A710 cores share a single cpufreq
>>> domain.
>>
>> Regarding the CPUFreq domain shared across cores with different power
>> characteristics, I think we shouldn't be lying to the OS, rather Linux
>> should be able to deal with it, somehow.
> 
> cpufreq-domain == cpufreq-policy here I guess. All CPUs that change
> their DVFS state together should be part of one policy. Not sure if
> there is something else you were pointing at.

Yes, they change their state together.

The question is whether it's okay for these CPUs to have different
dynamic-power-coefficient values, and whether the EM code won't be
thrown off by that.

Again, they differ because within that shared policy, there's 2
separate kinds of cores (2x Cortex-A715 + 2x Cortex-A710).

Konrad


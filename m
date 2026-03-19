Return-Path: <devicetree+bounces-277675-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oJcuOjXHu2kooQIAu9opvQ
	(envelope-from <devicetree+bounces-277675-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 10:51:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B0902C90E0
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 10:51:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3DD523010499
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 09:51:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B1483803E1;
	Thu, 19 Mar 2026 09:51:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L0Mp2sKY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="InPE9ygW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E6613793A8
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 09:51:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773913904; cv=none; b=KPl34EgTRWqj02ZzrhQb60HAaLWaSLVmAj096bavZpHrvAwJxvDftEhTJgCavHr8NCvJMm38Ot2SmdqzIkrKnv6YbewX5M+xl1C8+BaTuPW954CzTN2HTL1a/lQ6vBXsTaEi1uEw2RiiD8IpnIodncY77BDb/PyfwDwEOvcwKR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773913904; c=relaxed/simple;
	bh=XIdmcRzrt08GSsEQ4KFKAFyQ5HQ5y5xpQzyxlIuxn4E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XfJDKdEbdVpQU+CNdEdZMOBvuth4hmyyS5R/SQqg6Bj7/8QVPFTWSoyqBVDNycsNgBTrmKWmmRhHr+JTFeYy4Ci2/ILKkY7sgtRJDfLNRkbW3ApP/L1xWiee/FNiXe+UV05McIpfWRgn4aKzXFJ1lJqSbgByMK86L1TWbzq2Mp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L0Mp2sKY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=InPE9ygW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62J7476T1567541
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 09:51:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UmvEiofQurE2JPcx+JH9BN8SvuA/6RheoqV+inHN3EU=; b=L0Mp2sKY609qYZaW
	DLrD0K8jML/yrhLgUc+BIUoL8l7Ee0gxITVtK2RVaVjRWUa8vDV/Y9N7mD7VptTq
	WdL+F/i+nj6eYnPHWb5GgG2ziIDQNYlnrvZ5I02WwTUoeloaWnJMjB5Yw9FzuBkg
	hI8gXNERWdw93QSK8L68UoA9eZM6ApLM71xQ4XuUbC3MZ8XjToPcnURrrOU5t4QJ
	aH7WOAB4v8yZxBxejSsXcCfkmvppHEuObWri/3qJM3W3nlJMHoRh0pDicGjLRaaa
	FCSUtW/X6apxE/p1w+lAR25VrYtnURS5OTwA1z8MIQZhGDl+XvmOQoGcnj9gnlsV
	/q8c+A==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d0akxgvv9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 09:51:42 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-5073ed1ec6fso7368091cf.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 02:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773913902; x=1774518702; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UmvEiofQurE2JPcx+JH9BN8SvuA/6RheoqV+inHN3EU=;
        b=InPE9ygW4zOFbFlVbUsXuFwe21kfFpw8/GQPrLNXE7j/c0CC4rlYs7yWIbNNvRTvU+
         MOrD6ZmuzV3JRe0sRmfoCc90v4mHRkZzQbPMUJ78cGghdsOKbqr4yZlTc/eVtQdgtdqA
         mPW43ipahaEbf7ZgcmrbgCL5nJkJseuCti21wV7c6/agFdRSeieV0/MfFDC6DX2/b4C9
         Bp0k+arNnWazWhRN+C4mccHNckvjujD3H3JppeWKlMWA3UHvdgHx2xSC890a4cBPDHj/
         kmPKNFenRgIjkPOQjoUKVvwd/jBzq/1bK/5z+EDxS7BvCfBUs0KKhxVIWlJYrOqDJ9Mh
         RK1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773913902; x=1774518702;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UmvEiofQurE2JPcx+JH9BN8SvuA/6RheoqV+inHN3EU=;
        b=mcE98DDnjvEEEgCvfrdQ3MV+iOu1d6TgiKzk9w+crHydHKZxthDppT2L7ZKO50UV+B
         KFHgG7n1wcPqHAA6ZaI3qrdJNizF2o0w3V2wGd/tLW4BGM55WJrFa4F2mztPQz/e1VjX
         iu3zaln707T86E3GWfZZ5m+Np3f9njApEfjbO6KaUjRK94uk0xM74V7Khl2ta6WQElsO
         J2G/L7YC7WakZZ7gJsZ+pEujECnZypIzKpgfnOG8ormHns9dcWFFh31lWZ7bebTliXvW
         FhUcKD9uGz2Drdmjj91ibSYzqPWynxOV7uaVa00ojxZYmUyDgV0g+A0sbKC305fCz3te
         lTOA==
X-Forwarded-Encrypted: i=1; AJvYcCXFV+Em5n7PJLPr3v17gyMN/OhTDus0M8cnR8hsIRri3SFGxVr1SCi5zgNmgeLeIGB617uJM33hvsra@vger.kernel.org
X-Gm-Message-State: AOJu0YyZxI2sZE/U6Ara7GWp6wHWZx8mvV09ChxzxQTs2lkvK5w6Ccpf
	G0MYng7LgZXKYUBguAjKz2Y/VSxt+W1llxTmSQ78+akvb5uc4687aWxgJ2NzwcRDQWuZR3XxVy7
	PqhlCTbklG4+p8OP1Jmi8+2O/ihh/Zl8U8KyT8AwjZ2g1Ge9uy3shdnEyNFU3RSCg
X-Gm-Gg: ATEYQzw2MrhlpagKeHGSUcn4o/q6Lf30v23bLzIpNDByUdAZTJVWnoXmNEZVwhIAUuo
	0MMuKafFd7OKqhOQ1hNYNbWiTfBnc8P75dK82adyEAlONBhpwqmvZ3YneJ8xRFZWjRpSVx19p/E
	AvrThic55ttVCBEexPAtvzM8Mu5Owuk8q54akgPhMvGErb7ZKSoD1PrskGel2VJO/XpY4ldeTm0
	SI/nxpo4kftwYnJ5HaGt3r/A01WC1rfKS2/quzJ4T1JCJyNPoOoBvmY69pl6qu2mhTtIkXVmfg5
	O0WRS6bdqu3J9z9F0Uw6ZEsbqhGEzGC/6T+gpNnadVhp/WO6/2QbQU8umVNGDYV7HUHGCqZflt4
	vOIWLb/LZVkmIVqp+Q5QlMEk1/Pd6foaKMiaADTlB0T1qUNtWQD+FwZDy6u15dMjFlC8th0Rkw+
	Pn7NU=
X-Received: by 2002:a05:622a:a955:10b0:50b:1e21:1733 with SMTP id d75a77b69052e-50b1e212787mr36118681cf.3.1773913901671;
        Thu, 19 Mar 2026 02:51:41 -0700 (PDT)
X-Received: by 2002:a05:622a:a955:10b0:50b:1e21:1733 with SMTP id d75a77b69052e-50b1e212787mr36118491cf.3.1773913901222;
        Thu, 19 Mar 2026 02:51:41 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f16868b5sm415548966b.30.2026.03.19.02.51.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2026 02:51:40 -0700 (PDT)
Message-ID: <74f59ef0-ead7-483f-a80e-a3da2f6ebcdb@oss.qualcomm.com>
Date: Thu, 19 Mar 2026 10:51:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/8] dt-bindings: thermal: Add qcom,qmi-cooling yaml
 bindings
To: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>,
        Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, rui.zhang@intel.com,
        lukasz.luba@arm.com, konradybcio@kernel.org, mani@kernel.org,
        casey.connolly@linaro.org, amit.kucheria@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        manaf.pallikunhi@oss.qualcomm.com
References: <20260127155722.2797783-3-gaurav.kohli@oss.qualcomm.com>
 <20260128-whispering-caracal-of-respect-a26638@quoll>
 <36706481-2549-4716-8e6d-0e4db42591a2@oss.qualcomm.com>
 <546faeda-d896-403c-a449-5c9b0cd7159e@kernel.org>
 <17474333-bb82-49d7-bc04-45ab21095c38@oss.qualcomm.com>
 <ae4c1f7e-8f4c-4ce0-a6b8-bab29984e693@kernel.org>
 <c6136314-5bdf-466b-b19e-43062fb11150@oss.qualcomm.com>
 <e6679f94-2648-4d35-80cf-d3f823f9dad3@kernel.org>
 <4f815a0f-a815-4b77-a4cf-a4b18e776eab@oss.qualcomm.com>
 <95142608-b5b1-43a4-b8b6-38e658275f30@kernel.org>
 <abhgxF1RcAJD-cK9@mai.linaro.org>
 <3922012f-25e6-4b75-9183-f9277ef5d040@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <3922012f-25e6-4b75-9183-f9277ef5d040@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDA3OCBTYWx0ZWRfX6Ghd+p4Ztiqz
 SDHwLvvYXOoALxuVhO87Esru+SEb51oBZ0Qu1CgJ6gq3nXx7gc+l8aLZtTbJIDV0BAKdQosmvDV
 0zAAgu6MpdAERcAE5pqhHz+eJSxKNnWOiNzA0tCCw/Qf/Xva8Yz0SaH7yX8sBWT0PwTKnqavwoY
 ZkQpMdeIGXFfrLKJhW3nrc9zXPtQgQPVl8xwma4BX5RE2F/Tewy0M0CWm9ga7NiUSLK+dcEVKjo
 IwcHeqbU09M/pueurXYY/7j21QljV50H5LzvLB/dHmIctm5w7HFB/cuf769qUFHVPqb50XLOEME
 2n53md9DQkzDcrpH/iolgeLx+l2G1/MsA8Tv6F9pZS7t+G+S4asij3vcJvH0TyE2MmVn9sKaexL
 y5tYDiutUtgj+qFWq06VWiUGsANbDhQcjgLWAOhrG843ZETWc4kBAkKoDCVKEcPH8fF7il0WvuF
 rhq7vdZZrfXcESt+qvw==
X-Proofpoint-GUID: DpG5lIiZ7BxPzs6YXsp35y0mx6_CkyHX
X-Authority-Analysis: v=2.4 cv=ZeMQ98VA c=1 sm=1 tr=0 ts=69bbc72e cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=znx0l76g26A9csr8bQgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: DpG5lIiZ7BxPzs6YXsp35y0mx6_CkyHX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 bulkscore=0 clxscore=1015 spamscore=0 suspectscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603190078
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277675-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,cafebabe:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6B0902C90E0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/18/26 11:17 AM, Gaurav Kohli wrote:
> 
> 
> On 3/17/2026 1:27 AM, Daniel Lezcano wrote:
>> On Tue, Feb 24, 2026 at 01:17:22PM +0100, Krzysztof Kozlowski wrote:
>>> On 24/02/2026 13:09, Gaurav Kohli wrote:
>>
>> [ ... ]
>>
>>>>>> As a result, each core requires its own cooling device, which must be
>>>>>> linked to its TSENS thermal zone. Because of this, we introduced
>>>>>> multiple child nodes—one for each cooling device.
>>>>>
>>>>> So you have one device with cooling cells=1+2, no?
>>>>>
>>>>
>>>> This will be a bigger framework change which is not supported, i can see
>>>
>>> I don't think that changing open source frameworks is "not supported". I
>>> am pretty sure that changing is not only supported, but actually desired.
>>
>> Yes, IMO it could make sense. There are the thermal zones with phandle
>> to a sensor and a sensor id. We can have the same with a phandle to a
>> cooling device and a cooling device id.
>>
>> (... or several ids because the thermal sensor can also have multiple
>> ids ?)
>>
>> May be an array of names corresponding to the TMD names at the 'id'
>> position ?
>>
> 
> I am using dt node like below to use with cooling-cells = <3> approach, will post new patches with that.
> 
> cdsp_tmd: cdsp-tmd {
>     compatible = "qcom,qmi-cooling-cdsp";
>     tmd-names = "cdsp_sw", "cdsp_hw";
>     #cooling-cells = <3>;
> };
> 
> please let me know, if you are expecting something like this only.

My question about the need of a separate node still remains, i.e.
why can't this be:

remoteproc_cdsp: remoteproc@cafebabe {
	compatible = "qcom,foo-cdsp"

	...

	tmd-names = "abc", "xyz";
	#cooling-cells = <3>;
};



foo-thermal {
	cooling-maps {
		map0 {
			cooling-device = <&remoteproc_cdsp CDSP_COOLING_XYZ
					  THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
		};
	};
};

where you'd presumably call something like qmi_cooling_register(...) from
the remoteproc driver, making your added code essentially a library, not a
separate platform device

Konrad


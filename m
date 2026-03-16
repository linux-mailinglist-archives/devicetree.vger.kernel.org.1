Return-Path: <devicetree+bounces-276097-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mE/TOnHft2mcWAEAu9opvQ
	(envelope-from <devicetree+bounces-276097-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:46:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 82CF42982B0
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:46:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E8E56300898F
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:46:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5610738BF74;
	Mon, 16 Mar 2026 10:46:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SitWOfax";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Qbvqu0Lz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E22E429E116
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:46:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773657966; cv=none; b=Q0Wf+0mNCCWW7HwnH64fEQH8CLMpPedSykj6FDeJ8o6I6Z2CNnn84Jw4ZEZj6BXfU7wANC7knR5jSUAlOpIPM/lzV42GTFfbdDxjqK6fhEkRk4vB3euxnw16AmZAIpUOwHqAgMhz5lLXQpOJjCYEDqsHyTnDjvrk7cLMdEgU5Mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773657966; c=relaxed/simple;
	bh=zfkAtaks8TnTGZoseOdB4Sa47JX+p1bUlJg+ldlxrkk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bNAmKe3Z6lrxY+ml+yYHZyNkSKyCmBP2HjEAq492e4ztkP3GJl2ZxSR1+r6OOtp9gIDX6iW/agPzv3x9XkuxG9mg6C+8qa0EU1aMHuOfOOAi6nVyRshAJ4xa0rEb3uSTcxdaTjY14x4Pu+10tRRKlsu6FSe6kDI3rNyDSAhxhLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SitWOfax; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Qbvqu0Lz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62GA46F33124561
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:46:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	E5HsmY6Th9CL3tlgqtolCjbK00YEQZ72hvEx8QM+PtU=; b=SitWOfaxiWQj5ITT
	4Pg40LQQqS1JmtiO/O6evt1vjZ7pox9pQz1VIPsMqdSRzujGWRzQKmNqqse/d7aI
	DNR5Vi4VJVCYGUZcqjtkk4XTIubCAgttzCh5axFn+F/lGvU6EsYslFo4nrNaLsDQ
	QsXd06KuSoL/dPF8xsS7RoVi4Q/4BDzNrOtQDPGh3L9xTW0mFfRXO8B3teCekWgd
	wQ2EFqkjSHPDKNtLc+Nl71mKO8VUWGzjXgaEEeTgBbCEC6spXZ2FJHN97HDF/jOn
	x9mqQhCYWsYZ7kqJtOxFtpbsSYv7gyCtQ8eWViTlZeo8bPS/BiWzVy/n+a2+sxfJ
	TuoU/g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxfsmg43f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:46:04 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb456d53a5so303106785a.2
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 03:46:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773657963; x=1774262763; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E5HsmY6Th9CL3tlgqtolCjbK00YEQZ72hvEx8QM+PtU=;
        b=Qbvqu0LzUeMyzEzSmbpIpefit4Ce5OnRMUwhLEKa+lIzp1i5gE7o21Np0h2Wlrw9nL
         hujq9repdiOybXIAu7sP5yxdOLEEapSevwhXua4nJWQWgrxGW2bCVXwS/0LAzlCnxxG2
         JuZA9Hq2yYfjxK68LA0dhx65PsLPt6fU2W34qwwk8ICwXuDefPtHa2alfrXHDbNm3L/s
         U9icmh8T/Y1+axMryCixdRNUQsnUP4pMAdRdIuUDClEGCEmUG8RAdLSmIc03ohUN9TSH
         qtRXPvr9/eekLMIGH/JplQDpMNMqGvjcaKh8e6cqnNTk0pR2fyo6AKKA4TgwVJHuhl8V
         F9nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773657963; x=1774262763;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E5HsmY6Th9CL3tlgqtolCjbK00YEQZ72hvEx8QM+PtU=;
        b=InnAdztKD7N6lGuDnhuEaAp/JiY78YziqF+QG80+YL1lNAjNlIjYKxWy4p70gNIM57
         WC2NnOAcgC7V6xhEr/UPwDQWbCo2/pnxr+u9BGNKFYOid7p5nXRLiIuj8frqu+eXoo4f
         K9yJnA5cbhImgz5h/BNibDWx2V4JSg0UOhPairxE6mqrAg4K3Yc+gt1X3o/4kE+yNw5R
         AxihqgNkVEU/HF6OaN3hFyr+Hngt+6mCDRGx6iKfuddR5JypkT/9d4KyEJtYtvZJ9DzH
         93a562aGj24jTmfdaxn9z11N/uUAd8UjaG/mje8hYaaQidOcigNFIlz/iZiuNYJXJaQ8
         ZDvQ==
X-Forwarded-Encrypted: i=1; AJvYcCXVkrzJgF3MvxvtV7IYR5cymXX8NGEypkhhfNnikZA90+1Z72A4PN1Viubd3pOnZvDQEem/Zz+fEE89@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7P4NHgRrEn67hzUzsyrVsdeD7GvPamcbwqhyWlbxkFhNDPUCl
	PjJdTBwgJi6vskbP2fUSmpARtMXSUolm88+hwXjsxLLJUrBSCszn0NOsXVpFq1/iH3JYz1RAiwC
	kwnOMoJzbTIla6Y5a5qK8b/neVEG0W0l+4rYt04nEDfbA5Kjf7/ZZX5vLqeBYd+TV
X-Gm-Gg: ATEYQzwQWO7Q/3V9kL+r7aOvhO5obp6xxVYoAqKSw+XONbDvQltS5U7LT7gXWEduBQM
	pyA9VjKalxOO4O59iXG3ST2LBZJ8UJgvcKm2YXKIQH/ebzvCers0siW4ix86IKIzHyMr1liyvF9
	F8RsW6FsOp0G12HzEwX0YjD+rwfYZHQyOQrBt+fRojPPXEuCVes7ktBmtf+UMjVkSUcR9RkWxhk
	jZ6Uyk8c2oIvOt3y/131BsXXbZO1WQDEwyDojmAJKQ0ibWxS/XmJOWT8vNxDyStimBNO2Z1bSsL
	+DJrXs4u+dWV0i+ty36jSeoONhxVyjRgevgGr/TwZ1ikyr/an+/Hz4GkQ//gg+EhV4lKqwOHWi7
	jT+D4kqbC38R2KGv/YsN0cHtoBFCMWsWBhegbNpO8gJxCm/XEvf+1fUBSqYfwx7iahqUKZYyOeJ
	FOYuY=
X-Received: by 2002:a05:620a:40d0:b0:8cd:7fc0:ee15 with SMTP id af79cd13be357-8cdb5b60335mr1300129285a.5.1773657963298;
        Mon, 16 Mar 2026 03:46:03 -0700 (PDT)
X-Received: by 2002:a05:620a:40d0:b0:8cd:7fc0:ee15 with SMTP id af79cd13be357-8cdb5b60335mr1300127185a.5.1773657962827;
        Mon, 16 Mar 2026 03:46:02 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-66350992e88sm4976671a12.24.2026.03.16.03.46.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 03:46:01 -0700 (PDT)
Message-ID: <3493e323-c666-4a34-85d5-fe5abb5fdc6e@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 11:45:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/5] arm64: dts: qcom: hamoa-iot-evk: Add Embedded
 controller node
To: Anvesh Jain P <anvesh.p@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Hans de Goede <hansg@kernel.org>,
        =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org
References: <20260313-v04-add-driver-for-ec-v4-0-ca9d0efd62aa@oss.qualcomm.com>
 <20260313-v04-add-driver-for-ec-v4-5-ca9d0efd62aa@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260313-v04-add-driver-for-ec-v4-5-ca9d0efd62aa@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDA4MiBTYWx0ZWRfX+wypPwlI5LNo
 1/TL5un4nHs5KfAM+NmlSj69y5TgE+IvL8yx39/BAxBaASHKJXHCIjuHSNuCEIsWGkG/CEyg4xB
 aA1tFGyQIa5Py3udKzP304goRF3KKIFD7mjkz3bGNn3A6AzPRZ+6h2LjLjsnXja55moRIROQdRX
 bZ7DDisOscRXzGklLvHZ7TbTlgXO0wU48vgBeCiyXlwVcpZ5tA1rLER9tmalZIU4GkKHJQwEl1J
 JW2VC85B0PGxDN6Dgquck6Qo82I0SWDdk92/MJpciKHPcWo5vuFydoP5pyw0uTy0+etp8rpHEe7
 i78r49ANTCgPMrr1PQD2HsaCEnB469GXeq3eunl/Rynre9CcDG6fKAy3Db0FFac6Lv3fUWmc36n
 JFN2QJeBNI8SLvPmqg2BR/e1D2ugibNlLJAzB6+OLtBoZnU4e9Z/Ryo5jIjrIFC2u2KO4jl3F/u
 C6miQ1CXr+fs9cNxBDQ==
X-Proofpoint-GUID: CWy3PCSS1-PygAMgWt8KHxQ6dBOq6ByW
X-Authority-Analysis: v=2.4 cv=V/hwEOni c=1 sm=1 tr=0 ts=69b7df6c cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=7wtgjnKuI7ixzQLi8VAA:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: CWy3PCSS1-PygAMgWt8KHxQ6dBOq6ByW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_04,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 clxscore=1015 phishscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160082
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276097-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 82CF42982B0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/13/26 11:29 AM, Anvesh Jain P wrote:
> From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> 
> Add embedded controller node for Hamoa IOT EVK boards which adds fan
> control, temperature sensors, access to EC internal state changes and
> suspend entry/exit notifications to the EC.
> 
> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> Co-developed-by: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
> Signed-off-by: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


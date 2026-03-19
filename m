Return-Path: <devicetree+bounces-277566-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uKMiBL59u2k2kwIAu9opvQ
	(envelope-from <devicetree+bounces-277566-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 05:38:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 133C92C5EDD
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 05:38:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1A8DC3014905
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 04:38:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EFE4369997;
	Thu, 19 Mar 2026 04:38:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jv2LUteG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EDblSzWt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D2A535B64B
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 04:38:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773895097; cv=none; b=K/gQeAW/FpXxAgsQZjFyeetcHuVsivucX7kyo9ZaB8BLjOD7HdthkMWHD48K9CY44RzDOIklyr3HGgKs777oCtQ+bA1Zfe0nJaDekKCOK36xhqHAtJLEmBNkynuEG30KJ0zso68su5zF7xi0M6y/K13TkKGJDsR4Be/fkj8wUk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773895097; c=relaxed/simple;
	bh=zdItmlgsAf7WnXvqKf/o2M5O4UtcRKrRhA/lmoQMLok=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qb2LQtzVth5nfEPLoeu4rBeBau5H4DiX74k5mkhYMHX9Y/GW9Vf2Y/mn4IR2uq/W8Re6ggpZDIOzXxFvwbIwLoLQR9MnQmT2Ts16Rtx+R/es6c36r3Is/GvqXomFhuClBKcHbVH7fWFh71XSSibULvKuSsmQ1tUvyjaGBiTTzPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jv2LUteG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EDblSzWt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62INcRvU671434
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 04:38:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1K2TFZyjMf/NT2Pihlre0XPxbzUAwiHBTFp4fG3Ekeo=; b=jv2LUteGlqGPevSg
	tINZ+lobg+asG/tSeRf6PRVTCtKZG5Yqa+iiksK/L/TfUNKMDVOWaa+4I3atV5+K
	uLMl5DO0HuDJaxutqJIf8DY75rVvj+kNiLKSRaxuehNBq2sUdP2WyTmC1+oKq9n7
	BSk45ilJFAR2jjFYGF8I6/ILD3UzstyyZvQuo/duh4bTF0/uRaMNDabQ0pq3iLDS
	RqIhTYLo5WZ8/1SLPP6cf/rEAX2AEUtkoR+CJCEx4JhDbBTGw+EvWbf2Q6KMSubq
	XXRsZberZIna01UQXNnZZAfSvFRA+K4Crm5RfN3de4KHRBZ5oX0tiISRtxdtJu5x
	0209eA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cytj53b45-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 04:38:15 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-82a73ec7290so596290b3a.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 21:38:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773895094; x=1774499894; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1K2TFZyjMf/NT2Pihlre0XPxbzUAwiHBTFp4fG3Ekeo=;
        b=EDblSzWt0vaJ4+9KJGAJ6HKaNdXmYkOZzgZJU5yxnkpTEeKAg4KB8ARJuf7AQ70xxx
         p/T/rEahzx/254ZhkE5WpdgjIhA3EDRZwsh3/UX7WAJ5X4u0kb0n10WODWtcQEU2SmJv
         GftS5+RVXJIeJW3tN4/Y/P5yfaHE1qOSGfa+0ab3NHXKnmTFsPK1CDxXtalKY8XacGgQ
         0ZX2Sa+XSckEL1JhFp3HPRs3By+IEx18peKDDA5NadlgdV3E2uMGj3iu4jJPAiomVo87
         w7PdkyFeGav9u3ZOqkOx9BF5inTq3Nx+Sg+8aBjY+6T82k0/OSZHtRp4MQVNmjPEUND9
         D03A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773895094; x=1774499894;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1K2TFZyjMf/NT2Pihlre0XPxbzUAwiHBTFp4fG3Ekeo=;
        b=gIdxYz/4uyXTC/8SgtSmiiMd0kq/eQaAFB2F9d32wuK1foM5gmZ3Z4zhvJpVwajHge
         MmmBTHgNS9mTGtp4y3pI+2H13wIMarePBpg8e78rG194AMZKOXkTprQ5/1iPSN/j7n+4
         7FYCFtJa8id+Lu7MFeVjGh9AZaYFvl+kHXQQE8iROWUTlQGrzOhdTiz2/dOVhk+4/3F2
         i6W3oMRyEvlC3X/FULOOqtScNzJo/Okz13hx15fXpyOwRIwl7nANftYprVId3OpQ+mda
         zCLUKFUBa0QGTqjuS8GyO26cAGFKp+fuas0jRcuFL8thHHHm7NplIj0dWGypMHOAN4O8
         5e+g==
X-Forwarded-Encrypted: i=1; AJvYcCW9Jc3WQoGdJrtTGlT3e+mOUoSR+c9ptSVSt9ELBK/NTZgv6aisvG9yCD0sBwM6pkNfmy/hQkRIFCF9@vger.kernel.org
X-Gm-Message-State: AOJu0YyQW72usKUNYO64B8LvWMvKrK1q42zj4lYeQZOs+jzhPo94ff9w
	wDYNxtj8nWntAXfOT+SP+OoovlUtDP3QATnYCGkLJuXQSTs5iMm2cYRxaEFRuNLSZZmxGieTNAT
	K9LJwOO/kQustcDHIE555xshaRKIG0mk00XHXG1MPljMDvKTN9U41QVGhv2iL7vfm
X-Gm-Gg: ATEYQzwu/ecpdU+gGrIl2Zz2Nn98dpsTar9vgpEDPkpeEpH4PTi5hH98eYnP55B2dlX
	0cUZQxODt2qpb7I652waOr/xGN5aEfkFnTXmZE0PZ2/ZUNMAkQCjvPxliDkmCTiSL3OuEZdIRai
	N7n39xQCa1/3YjHC/WJF28C3aJEw1o1XLWx0nWFlCNni6sAN+YafZEMMGM0kxAZYnnYEP2RmDEA
	uLKYWL5RJ18zS8cFJXZlH83jThUVNX99P8JiaF4oyCTVO/Abk2NQFz0ppQM8WheuhQOA5HTtEy3
	dcZMXGgRDaepb5zkAQ5ANI7msYz1ZgtkPA8QHXwKzwmxCJXgeS6ZGfxpG2jIMD8JlXfxTETRdkL
	5ePc4CM2icAGKY1Rva3U2+ktNjpovLgZgRmxdabray6+c8trhAP3m3FJef5WgWv8NezfdAhw6Ps
	5mwta2nvYXtWTKv2n9
X-Received: by 2002:a05:6a00:180e:b0:82a:110b:e223 with SMTP id d2e1a72fcca58-82a6a925d06mr5279808b3a.0.1773895094080;
        Wed, 18 Mar 2026 21:38:14 -0700 (PDT)
X-Received: by 2002:a05:6a00:180e:b0:82a:110b:e223 with SMTP id d2e1a72fcca58-82a6a925d06mr5279777b3a.0.1773895093643;
        Wed, 18 Mar 2026 21:38:13 -0700 (PDT)
Received: from [10.133.33.168] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a6bbe200bsm5131282b3a.44.2026.03.18.21.38.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 21:38:13 -0700 (PDT)
Message-ID: <254bac80-dcc3-4c92-a0c3-40a1adcf4ecd@oss.qualcomm.com>
Date: Thu, 19 Mar 2026 12:38:08 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/7] dt-bindings: remoteproc: qcom: Add smem properties
 in documents that reference to pas-common
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Bartosz Golaszewski
 <brgl@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260310-knp-soccp-v4-0-0a91575e0e7e@oss.qualcomm.com>
 <20260310-knp-soccp-v4-3-0a91575e0e7e@oss.qualcomm.com>
 <20260311-meteoric-yellow-pogona-fe5cf2@quoll>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <20260311-meteoric-yellow-pogona-fe5cf2@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDAzMyBTYWx0ZWRfX64nhz3S0IlGy
 U086pQMzw3aMB3+uS8/oobjTHDuxdrI2jAqtTil4Ijm3ITevAFt+sISGjD5QlmiCWbLgp85QWiT
 SlcRrfVGojpwguyn9aEGKHDDYFBDhAWumymvxjLxmPZjw6GUZWK8OOu3/HTVRP4U6YAQiij3MjX
 1Vhov8KQK3icC2QAOJfFybyIDOqzRVOibKH8bbD6Gph7h/ZmO4XVLzBGSemz5W7mjQZLayoRf88
 FGnatw7ZhyOHaIb/hCiyasfL40ucb7ks2VXPNCVAqxgob8xA8p4HrRAyud+w2XZaF57hXPnOYke
 Wjm5H1blvojqfcR0r6//udSSug9KQoLG3H+n6X9kpZQqVLa0kU9BbPNGX7MRpk66j9aN+0wxkIN
 kCGIyDwXo2rYr/UKVUZkes1QEMBi7xaFv2/AvUwv3iIU1aBmBXk3Pp/RtVAeVNbHR+ucdDTCW/K
 wkOMqIu92GrIM8eweaQ==
X-Proofpoint-ORIG-GUID: 3s4UoV5svZuAqPXIbkMmqW9tvRbj-sRn
X-Proofpoint-GUID: 3s4UoV5svZuAqPXIbkMmqW9tvRbj-sRn
X-Authority-Analysis: v=2.4 cv=dM+rWeZb c=1 sm=1 tr=0 ts=69bb7db7 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=ogO5B-f0vwbiwaMq93oA:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_02,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 adultscore=0 clxscore=1015 priorityscore=1501
 phishscore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603190033
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277566-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jingyi.wang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 133C92C5EDD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/11/2026 2:22 PM, Krzysztof Kozlowski wrote:
> On Tue, Mar 10, 2026 at 03:03:19AM -0700, Jingyi Wang wrote:
>> Kaanapali SoCCP will extend the list for smem properties, add SMEM
>> properties "qcom,smem-states" and "qcom,smem-state-names" to documents
>> that reference to pas-common and add maxItems constraints.
> 
> This change is no-op. pas-common already defines all this.
> 
> This should be squashed with the change changing pas-common.
> 
> Best regards,
> Krzysztof
> 

Well noted.

Thanks,
Jingyi


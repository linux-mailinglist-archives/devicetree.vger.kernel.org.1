Return-Path: <devicetree+bounces-224196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 59423BC18EA
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 15:46:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 128291890120
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 13:47:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 313DA2E1737;
	Tue,  7 Oct 2025 13:46:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="I9JgE6P4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80C2F192D97
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 13:46:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759844795; cv=none; b=rJPiCsf+sCSd6wFRrR1Y5SHQdcEvXu50JMbBKtbNQF9XzZEFtynKaFYXAWwT3AXwNc8l/crq2bFwf45OZWbWjYmpp3JgTFEyFHEGHF25/TLWU0SCpVCab8kk67YIUB4ACTvcKV/BYRE1r5rSWiNbEfRSI0todmAYSm2UJCwpvuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759844795; c=relaxed/simple;
	bh=3lZ6UknrUZZp3tKa2loAmoYm234VuiXYoihS9yGbQBM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MvswKOOvx/nti8UshGWPAnDEbF3otTw/nX2HBgKpYReaJU9nm12uBsZFl0LH6eVtJ0q5HEa+DNaEw8pkoro4ZgIDgI9C3D8PA7geYcO1Uu0TX3C7vSRGxb9WwGN1rW7iIAsn6t05c+hiA/8cS8Gx4G5mv8s2jwSsF3bya485Q1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I9JgE6P4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 597DY8B9026707
	for <devicetree@vger.kernel.org>; Tue, 7 Oct 2025 13:46:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	s7CUkY7mH78KwOEvSRjDxBNTwXfK/qejz2A+Lc8hlKo=; b=I9JgE6P4BzU9cS2i
	aYUkLxuo2pVVtSjvX/uBAUJoO3l07Cif096zbdf62t9OiJl805yT8K2KEiLzcB3d
	XVpSTiPDwANk/R5jCW8TRVxQftnWqvtx1PYNxiQCQoF4HnaVBnPCl0m5Qiz1JCfk
	zp8WmBflyOFFUwO4f5OYJya9KMI82++I3Be8ZWeM0GrkCYOKc4plAl3rwAZnMxA6
	MxVde2/LDqxtUpEL4BdEDf2zbJgchtio9PheWNZT48E/jTODUrx877oEEFrgss0G
	sT53XGKGkblwlGvFCKOm9qCBkSyO4VsHF4YLyuYkfVkDLAgucDCBBjANzqReydPo
	+8vPYA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49mgd0k3g9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 13:46:31 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4e015898547so11702201cf.3
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 06:46:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759844790; x=1760449590;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s7CUkY7mH78KwOEvSRjDxBNTwXfK/qejz2A+Lc8hlKo=;
        b=VYJKVQCQuDG5mkJAunhnGbV7SF7DhGPIKP86jmmVz7+HIr7DtjWO4FkPGUqqexariM
         qtIEUehqP2aT8TZVxH+sDCrV2WXl1UQeM8qhAGrxeieo/1jawD/0XxJCi8kqk9KSt+7q
         cTWqIXn1eMehAZ8HHcaljqeDQpnTWEiblOfUZ1VbZFu0JDdOc+rajoAhjkvOtRm5Uqtj
         bPt8gVrFBwkHaf5kejvnsPvLFnMcmJIz752mF7KoLn3C3ROCFyGpotT8j8skKsRsmHob
         f0FJWiykyKeqxe70k4igmNfU+vlfv0vtoPP+EbfwImhkZ3jFpuW/JU95Z7UOvkdIZ80T
         bo1g==
X-Forwarded-Encrypted: i=1; AJvYcCXL3dTLf6k4IaKoZOebZc7f0WsSik6ZjBVQ5WM9rY8vXd0EXNoz67tD9z0vbfWRRirZKqPCsWnu4FDL@vger.kernel.org
X-Gm-Message-State: AOJu0YzxBC5JZcwHYuVnq3IDenmO/bzDaIKlei/dsNMQ17bKmCev7nGf
	Wn0Cs+qZKM3OWT3iiVgt0rotjIcxbLuHAUsCc4UzDskOEyNz+curALeoJcSWMNwdopdEYmAtO4i
	6yRu4toqyYoeFTxNWClwvYHaUA7kXRcThQewMg6NgyrOK8z8x8nBw43DzahpjjLA/
X-Gm-Gg: ASbGnctS9kLfBPjeN+Mi9Yzcy4pP0GJ8INyBQNQ+aM85SEXCxt/Vuy2wAGDlcBWbAVm
	pJZ/WYDClmHEeS41IQGxGHjVZMDETSQSE++PIXvjn7V2EPijt9cDAH9mbFYykZWblDq5lftVJ31
	y4WH0lZD/DAlhS9zsuFciU4jCRFja/TFeCCSRY4ZgwZxY+KIHU7OuqV/Cg2q5vneg99x7MIMJeJ
	lGh1+PyF9KgAsupHJsxElYgyPHbujfqr56F+JkJDpJFWlVZpxLR0tFYKjB+S25joVYUvFGbbkyx
	rjNnIkUuDx41ElHI0ZTWBGkruYqf/E21OvyDnEQWc9/VbyaQmKVJka4D7FyxSakuoTouiPmxJBS
	fkEdXclK0QjQOP+HFt49JW0XdIVM=
X-Received: by 2002:a05:622a:4f8a:b0:4c7:e39a:38a6 with SMTP id d75a77b69052e-4e576a2e65bmr125015821cf.2.1759844790360;
        Tue, 07 Oct 2025 06:46:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEMMuzgbdK3DGk8z54m0Z+WLLqxl6a+HKbK9xOp9p+K9sQwGuQ9spnb3O8fDu1XDavgAEg67g==
X-Received: by 2002:a05:622a:4f8a:b0:4c7:e39a:38a6 with SMTP id d75a77b69052e-4e576a2e65bmr125015241cf.2.1759844789676;
        Tue, 07 Oct 2025 06:46:29 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b48652a9ff0sm1396244066b.5.2025.10.07.06.46.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Oct 2025 06:46:29 -0700 (PDT)
Message-ID: <a349dcce-030b-47f5-9644-047e5b060cfe@oss.qualcomm.com>
Date: Tue, 7 Oct 2025 15:46:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: qcom: msm8939: Add camss and cci
To: git@apitzsch.eu, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vincent Knecht <vincent.knecht@mailoo.org>
References: <20250908-camss-8x39-vbif-v1-0-f198c9fd0d4d@apitzsch.eu>
 <20250908-camss-8x39-vbif-v1-4-f198c9fd0d4d@apitzsch.eu>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250908-camss-8x39-vbif-v1-4-f198c9fd0d4d@apitzsch.eu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: LyrRXR-W04VPuhWLoECvF8AskPCFZMnz
X-Authority-Analysis: v=2.4 cv=T8aBjvKQ c=1 sm=1 tr=0 ts=68e519b7 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=TqukyxIwAAAA:8 a=HDjIzE35AAAA:8
 a=EUspDBNiAAAA:8 a=PM9i-VSbYM6VvaBKnRMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=e_wvXvRcY2B3oMitRgDS:22 a=y3C0EFpLlIT0voqNzzLR:22
X-Proofpoint-ORIG-GUID: LyrRXR-W04VPuhWLoECvF8AskPCFZMnz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA2MDEyMyBTYWx0ZWRfX/VoQ1j0x9Mhp
 JoCVsM8V5Re8z+brIpMy1JSCRYMO2X59mWu8Q3hKABTVUg5B16ii80BGVsR9RVxKN9+ZSLBsy6c
 0X4wkq6uz+wlYQvAEqUUUgHmfA3QFQK9TUjf9/A6VGBr/NxiYRsns0svxVpcfAyQpCAzRTaSC9a
 5cRMu4+HLv+2zPnQCmeAKHyIOg8nq9zAaBgV11o0CjqCCzmMSaYBleSLVWUcIetTY5JSlqP4aqX
 dJcb/Pnq4kiiC58cTWOsD+zi6TKd+DF90z3Rk6qZSgltGaXjGK+wsGNsUmK/alUE8z28eNHxeBL
 tyWnXBmFHDTGbRkNaqcgz+y55jQUVSabwFhFOoh83/1bhV058LggJDEFf0W4C9flsJfQ3Ndm5m1
 Fj94wqoVvT+m99q52M7tXJM6KvsMAw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-07_01,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510060123

On 9/8/25 12:04 AM, André Apitzsch via B4 Relay wrote:
> From: Vincent Knecht <vincent.knecht@mailoo.org>
> 
> Add the camera subsystem and CCI used to interface with cameras on the
> Snapdragon 615.
> 
> Signed-off-by: Vincent Knecht <vincent.knecht@mailoo.org>
> [André: Make order of items the same as in 8916]
> Signed-off-by: André Apitzsch <git@apitzsch.eu>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


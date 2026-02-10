Return-Path: <devicetree+bounces-264233-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gVTAMpnDimm+NgAAu9opvQ
	(envelope-from <devicetree+bounces-264233-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 06:35:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 233EC1171E7
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 06:35:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C1D2E3015C91
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 05:35:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6644C26A088;
	Tue, 10 Feb 2026 05:35:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dMjA/6LL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GwEjjKLf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FE6329E6B
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 05:35:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770701719; cv=none; b=qNHuw7CV0jhx+rMCLyLk/VxlngwlLj5ghGv9P6OJFPOI85pV341fmGWIZJTcPTfNPhs8ly8ESoIjz6Ch6BZnuYVh4QIA7HinOn2FbmFS2HFxv2vm7pmvDOw8ldSwFXx2hWiljUhXnqbIz/5Fks87R2KQt8fBrlexIAlafOEs3zE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770701719; c=relaxed/simple;
	bh=Rq1Ocek2lZZBo5E6c+kKcL2B7KgGYVFXnWgK2OPs2ZQ=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=EL1+19sNP6963366QD5hCAeJ3aObYrYiMiC51fh6MoFlFxyD+RDeLiysGxWRwMzKFkWz6HJ4TeNvP1P/NoiQAqcF9C7S8za2D0wTDAOv6ahd9Ges6ws/WvTpGgjucyglf9L5q+BfFcMjUiHqo0O/BaVE6zVp9Tn5aguRswCOABU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dMjA/6LL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GwEjjKLf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 619MnVwu1421859
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 05:35:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	u3ldEW/nEVzh5CZp/5lBKtJ/9ynaM4YNM9Rzd9I+khw=; b=dMjA/6LLvGw80rHE
	1yCaF0O+iJ0cOGHq1l5e/OEdWhkxf5y/EgJtPXOtulZW3z+zFr89R13naLRWaWS1
	2yTEhK/Di3EkVDcbIYxth6WLIFiFMudbC3nhoohH2tml4OSvyLG2QCelalRFSFHu
	bD3eAxaqRQXrk2Yr/JVPNv5a77nVKhS6MHkthbL9F8YIlCvHKhPU/OWu3yzdVSNN
	yFkSxmrfA5T1XpvZmmx+EgUGUHT4hYVTI/YraAwC945gd5bKSmJ+0s2wHeoOZd0K
	O9aWAjl8usoLQ9UOklmst2QLg/aYucelzmJOrXYC2WQOvgXCmUc34nF5oMN2Q/E7
	6GEVCg==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7rpvs2nh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 05:35:17 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-82444d3d73eso285860b3a.2
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 21:35:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770701715; x=1771306515; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=u3ldEW/nEVzh5CZp/5lBKtJ/9ynaM4YNM9Rzd9I+khw=;
        b=GwEjjKLfUdGkN7pY0AXHKALKiVa2Lhg3MRHNpaIVGleZUnorl/qJwz0rvqvmyJ9M77
         CEipULd16ph8+NIrwgOFzfGeG4WliY7szw2rOi0q7/Ync40dWYHfFpqn8voiOcUAOivx
         QCrlp0+RQZn8CO+2WCxKKgoapf582yDlzCtu30GivKOtpGUFJJeKrxOL14jMaADmgFr+
         39ovfw0l1KTgI8F9RXA2EGZGcG2byVSMBaPy0mOLcAKfjYq4HyMX6prrAhHDeH18IdOo
         ooIxeYjEt95TSBtajn+MQpzE+YRDv7QWOoYCgoaZEevuTBD/sBqX5fNxH+he0ditrQFI
         I6Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770701715; x=1771306515;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u3ldEW/nEVzh5CZp/5lBKtJ/9ynaM4YNM9Rzd9I+khw=;
        b=OsYbe0i2dabFbZvB4okz3woEvpE5y7ae3lPwt2iNrk6eYbQ9vR3YJi0jKyhxJ8VXxB
         V/sdjlpm01ODsTpjxUGjUo5sb+6y42JghSd0lrGSqb2pMZf9qegEQQDn+uFUHZSDBRvL
         ufSdEqWBwIKplKLqvqKMLyw2GcW0c+Z1ricdRnVxPIT0DGpVhd46V+pzFz//p8IxJFHn
         IotWKZJozEwCbvx+VXVpRZ7LNtrJ4MA1ed4KZIN6rwhHzEL74ArOuhXESitaLq7jeR+y
         YH/HSGpjr0pdZZYuOTPBySpMMUZqvCp/khZbvESN7X4n5I+KBLzg9z91Qdu75Bko3zL4
         YMCg==
X-Forwarded-Encrypted: i=1; AJvYcCXqxsDddW08FlpONREeS71Rr5CauoG7BQd7O7xqaUWkYwfZdQoIr+rbAaHnRTIc0+7+UCBLpyWXJ9iy@vger.kernel.org
X-Gm-Message-State: AOJu0Ywyy1U6RdN2+ijcQY503Oc4qKovZytWGMKPUvDkes8/jx8xxPgS
	awdb4GezFwe1wpqFCUpZotVLAlzwEKKpiUO4wBRVLlyk5AsFvjBIXTW+WxbUqXf4AiysxsquGzA
	g0EKKDJvPWKNYAN7Bs5sqZJXXSvCYHKSaR/5grzGa93V3HwiLhKVWs132XCsDKQxhtM+F70Ib
X-Gm-Gg: AZuq6aLYthFfloyatvia5GD9wrwOfHEWU6/s+Yg34dlg0UdoaZth7/r4Mc6mfK/BlM6
	cen0p/y2TLbkEKsTFJhjC1F4VjoWYIDg+fosBOuT/QdWp1L6s1uAvA2+jT5tos3GhRMm9JMCNhg
	ClsyCNuCDMVyaBKnyY5We44xXQHMa5SdC8vHL9ws06D/pepJW6O/UQejiB8G5s7nUwXPrBj/st1
	J6wKTxP3W8H4YxOxMAikGp3TPWIyCfcozpvABMOjXk9kFYBJ14A5r3XkZmhGOeRu95h41Rel4oM
	r+SKsioXDbkBbKgz+NgF8+UeoFAGna0fq6tqkCEvu57QBN4LI5mOm9Im+GwTn2smg++o2IrRb2l
	wZ1Ryk3+5d064za+zUHxrTP4hZn0EmzUSiL/HWFI/dJGkDttR8j38Ww==
X-Received: by 2002:a05:6a00:6ca1:b0:81f:40e5:34c2 with SMTP id d2e1a72fcca58-824416f8811mr13006988b3a.32.1770701715483;
        Mon, 09 Feb 2026 21:35:15 -0800 (PST)
X-Received: by 2002:a05:6a00:6ca1:b0:81f:40e5:34c2 with SMTP id d2e1a72fcca58-824416f8811mr13006965b3a.32.1770701714976;
        Mon, 09 Feb 2026 21:35:14 -0800 (PST)
Received: from [10.0.0.3] ([106.222.232.221])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82441884b80sm12411804b3a.44.2026.02.09.21.35.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Feb 2026 21:35:14 -0800 (PST)
Message-ID: <a71e3bc2-23dc-fa02-0dbf-0a9d779dca76@oss.qualcomm.com>
Date: Tue, 10 Feb 2026 11:05:08 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
From: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
Subject: Re: [PATCH v3 2/7] media: iris: introduce SM8350 and SC8280XP support
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab
 <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bjorn Andersson <andersson@kernel.org>,
        David Heidelberg <david@ixit.cz>, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>
References: <20260125-iris-sc8280xp-v3-0-d21861a9ea33@oss.qualcomm.com>
 <20260125-iris-sc8280xp-v3-2-d21861a9ea33@oss.qualcomm.com>
 <8c5cd9ff-e549-00ab-60c6-814b52f50949@oss.qualcomm.com>
 <rhsmmvbxjzb4ylxryo3n6j6wf52tjpxxon6fww6tsfhxttc2g7@xfsnyfkqh3ke>
 <ec4348fc-b27c-9b56-2967-222e4e280c8a@oss.qualcomm.com>
 <d67faniik7jrlnq2a2wsyku3agpezh5qj4g4rip3j6pbeagmkj@xax6nuginypu>
Content-Language: en-US
In-Reply-To: <d67faniik7jrlnq2a2wsyku3agpezh5qj4g4rip3j6pbeagmkj@xax6nuginypu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDA0NCBTYWx0ZWRfXw7R8lj5704bi
 c+kPX9RFA+X0qEZCX9/roVTMevOXqiClGESITWkWcfG3lGY+CNVBC4bEvtWk3KzUBforyYZrBbE
 +fGRu3xHGRXMFEBRcvCFkgEk7s71e2F6i4G9ZDYh/lvm85dPLMh6A5z6ZjhaqTq1Q7uMItGVJz0
 yloxoufjKo8HtGBIBeagExQ/WtN94GnyzoRbTy9BVRi4ZyUF8m3h9fNEiIWJsjYWbIYrvbEIt+S
 r7Gq0XUMtDMkMk8VIF23D+LCkhcvZJ5bEaoX6Tu2U/ZZuDGhtQ9JOkhEFElIQAh+qJToVC6wf/B
 pGNrVYuFex+oTxXsO24pyGyDxnvwakiBn++DUWWlQ70msdVWkZ19qUoyPNsT4NXT1uGfb/koLPE
 9AuV3Vg4FFQ5gGB0tZwLYgNjYH9vLr4/YU0EOr6gVtq9DT2hpKXkt1EieBfLjZVYKFr4EPhRZcU
 hDTnkZCh0/bV//GUleA==
X-Authority-Analysis: v=2.4 cv=KKZXzVFo c=1 sm=1 tr=0 ts=698ac395 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Q1L4dSpLiPPsWIQ2aSSWHQ==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=eRPdXeDVQe4KOXe1A8MA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: HUyxEpAeSGyZL95v3deyvyL2oI7iYJXR
X-Proofpoint-GUID: HUyxEpAeSGyZL95v3deyvyL2oI7iYJXR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-09_01,2026-02-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 suspectscore=0 impostorscore=0 spamscore=0
 adultscore=0 malwarescore=0 priorityscore=1501 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602100044
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264233-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dikshita.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 233EC1171E7
X-Rspamd-Action: no action



On 2/5/2026 4:24 PM, Dmitry Baryshkov wrote:
> On Thu, Feb 05, 2026 at 02:40:39PM +0530, Dikshita Agarwal wrote:
>>
>>
>> On 1/31/2026 12:58 PM, Dmitry Baryshkov wrote:
>>> On Fri, Jan 30, 2026 at 06:46:04PM +0530, Dikshita Agarwal wrote:
>>>>
>>>>
>>>> On 1/25/2026 9:02 PM, Dmitry Baryshkov wrote:
>>>>> SM8350 and SC8280XP have an updated version of the Iris2 core also
>>>>> present on the SM8250 and SC7280 platforms. Add necessary platform data
>>>>> to utilize the core on those two platforms.
>>>>>
>>>>> The iris_platform_gen1.c is now compiled unconditionally, even if Venus
>>>>> driver is enabled, but SM8250 and SC7280 are still disabled in
>>>>> iris_dt_match.
>>>>>
>>>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>>>> ---
>>>>>  drivers/media/platform/qcom/iris/Makefile          |   5 +-
>>>>>  .../platform/qcom/iris/iris_platform_common.h      |   2 +
>>>>>  .../media/platform/qcom/iris/iris_platform_gen1.c  | 111 +++++++++++++++++++++
>>>>>  .../platform/qcom/iris/iris_platform_sm8350.h      |  20 ++++
>>>>>  drivers/media/platform/qcom/iris/iris_probe.c      |  10 ++
>>>>>  5 files changed, 144 insertions(+), 4 deletions(-)
>>>>>
>>>>> @@ -392,6 +393,61 @@ const struct iris_platform_data sm8250_data = {
>>>>>  	.enc_ip_int_buf_tbl_size = ARRAY_SIZE(sm8250_enc_ip_int_buf_tbl),
>>>>>  };
>>>>>  
>>>>> +const struct iris_platform_data sm8350_data = {
>>>>> +	.get_instance = iris_hfi_gen1_get_instance,
>>>>> +	.init_hfi_command_ops = &iris_hfi_gen1_command_ops_init,
>>>>> +	.init_hfi_response_ops = iris_hfi_gen1_response_ops_init,
>>>>> +	.get_vpu_buffer_size = iris_vpu_buf_size,
>>>>> +	.vpu_ops = &iris_vpu2_ops,
>>>>> +	.set_preset_registers = iris_set_sm8350_preset_registers,
>>>>> +	.icc_tbl = sm8250_icc_table,
>>>>> +	.icc_tbl_size = ARRAY_SIZE(sm8250_icc_table),
>>>>> +	.clk_rst_tbl = sm8350_clk_reset_table,
>>>>> +	.clk_rst_tbl_size = ARRAY_SIZE(sm8350_clk_reset_table),
>>>>> +	.bw_tbl_dec = sm8250_bw_table_dec,
>>>>> +	.bw_tbl_dec_size = ARRAY_SIZE(sm8250_bw_table_dec),
>>>>> +	.pmdomain_tbl = sm8250_pmdomain_table,
>>>>> +	.pmdomain_tbl_size = ARRAY_SIZE(sm8250_pmdomain_table),
>>>>> +	.opp_pd_tbl = sm8250_opp_pd_table,
>>>>> +	.opp_pd_tbl_size = ARRAY_SIZE(sm8250_opp_pd_table),
>>>>> +	.clk_tbl = sm8250_clk_table,
>>>>> +	.clk_tbl_size = ARRAY_SIZE(sm8250_clk_table),
>>>>> +	.opp_clk_tbl = sm8250_opp_clk_table,
>>>>> +	/* Upper bound of DMA address range */
>>>>> +	.dma_mask = 0xe0000000 - 1,
>>>>> +	.fwname = "qcom/vpu/vpu20_p4.mbn",
>>>>
>>>> This firmware is not compatible with SM8350.
>>>> SM8350 firmware is not released to linux-firmware yet.
>>>
>>> What would be the name for the firmware? The downstream uses vpu20_4v
>>> here, so, I guess, in upstream we should be using vpu20_p4, but a newer
>>> version?
>>>
>>
>> Using a newer version won't work as the firmware for SM8250 and SM8350 are
>> different binaries generated from different firmware source branch.
>> You can give it a try, but AFAIK it won't work.
> 
> Ugh...
> 
>>>>> +	.fwname = "qcom/vpu/vpu20_p2.mbn",
>>>>
>>>> this firmware doesn't exist on linux-firmware.
>>>
>>> It was based on the assumption of having 2 pipes. If Iris here has 2
>>> pipes, then probably we should still point to vpu20_p4.mbn?
>>>
>>
>> SC8280XP also uses the Iris2 4‑pipe configuration, though its firmware
>> comes from a different source branch compared to SM8250 and SM8350. This
>> means we have multiple firmwares with identical VPU and pipe configurations
>> but different origins. Could you propose a suitable naming scheme that can
>> differentiate such firmware?
> 
> Can we have a single binary that works on all Iris2 4-pipe cores?

That is not possible as it is older VPU.
For newer ones, the plan is have single source branch for same VPU to avoid
such issues in future.

> Or are there any differences between Iris2 on SM8250 / SM8350 /
> SC8280XP? Are they stil vpu20_something or should we use different VPU
> versions in the firmware name?

I think we can keep vpu20_4p_* with some way to different among SM8250,
SM8350, SC8280XP.

> 
>>>>> diff --git a/drivers/media/platform/qcom/iris/iris_platform_sm8350.h b/drivers/media/platform/qcom/iris/iris_platform_sm8350.h
>>>>> new file mode 100644
>>>>> index 000000000000..74cf5ea2359a
>>>>> --- /dev/null
>>>>> +++ b/drivers/media/platform/qcom/iris/iris_platform_sm8350.h
>>>>> @@ -0,0 +1,20 @@
>>>>> +/* SPDX-License-Identifier: GPL-2.0-only */
>>>>> +/*
>>>>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>>>>> + */
>>>>> +
>>>>> +#ifndef __IRIS_PLATFORM_SM8350_H__
>>>>> +#define __IRIS_PLATFORM_SM8350_H__
>>>>> +
>>>>> +static void iris_set_sm8350_preset_registers(struct iris_core *core)
>>>>> +{
>>>>> +	u32 val;
>>>>> +
>>>>> +	val = readl(core->reg_base + 0xb0088);
>>>>> +	val &= ~0x11;
>>>>> +	writel(val, core->reg_base + 0xb0088);
>>>>> +}
>>>>
>>>> you can reuse this from SM8250. That would work.
>>>
>>> Hmm, downstream driver was explicit about clearing only these two bits.
>>> Is it really fine to clear all the bits?
>>>
>>
>> Yes it is. We are doing the same for other SOCs as well.
> 
> Wouldn't this also ungate / start the second core?
> 


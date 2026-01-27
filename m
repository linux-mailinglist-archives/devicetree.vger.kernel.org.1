Return-Path: <devicetree+bounces-259844-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Kt2FpukeGmGrgEAu9opvQ
	(envelope-from <devicetree+bounces-259844-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:42:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0421B93C23
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:42:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 487A8303F7CB
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:40:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34FEC348895;
	Tue, 27 Jan 2026 11:40:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hAHBy+sG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GDD5oV66"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAA5D346E5F
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769514025; cv=none; b=jXQQNML/A6tcB8hsGV/YykP1k6dbEf/Qogx+a+LaardhsPiGDTpoMCuio0YNiQAkv47DPFyZT9SMpe1b6hcJ9GJMszOkAuuOWnzQWnTkf0Pm/psoNYMH2OW1nc4HLi62dLcXAfpAgYSMYYLjU2IOR2gMBSGOfuuYvmw45aIwuiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769514025; c=relaxed/simple;
	bh=Z34XndASaBYSPIlyXDDXMGIrowF0LIEMraPJAbcOFN4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qruXdigV0MzLjF2oPy5qelBHKWcu26uNeeYu1ClMirMwP6sXjBMsclh796PjnQu8sCeiPe6YJfadm3JUmNeAKGnW7YsUur9c9EoN7K/hzaFjev+vQbD55QA9hQph0WWMzrykQ2KV5KkvttuZuxfKW4bNXrImQMNKgunVfcbx0FU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hAHBy+sG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GDD5oV66; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RAJTxu3714726
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:40:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pyTXE/4ktfP1wNLAIJ7/zW9REPL6MyuWS6OZkwLnWWY=; b=hAHBy+sG536gNtP6
	pXAUBOxpm+99bB1rqlGmzL0Bi9E4T0En53RYgJ6/K7Ipq2UKgzBZt1YY1vkVAyEO
	KOEif28qlK55eehNSqsGLjuDXpsEFaLrtXUHQWOjxkVFePdwdB89074hPJelBEPp
	dQGB0EV67CqhHTS9/AkiQLrEfpAbC1ZQDJcbPVJ+YTUkIgAdsQ2TzzfG1Q+Enor2
	T4q328U2+M9pPwkwIiseDODEmcJl8DOVe6bI9KQfUmo+UWdPe7TmNjrQB+fOr1Ph
	9/0hDMnznNST1oQ/NP9se5wp2+YvBh9eIPeAxinElBl64EVY3NfRD4EPCmJi9RrY
	vVZnIA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxdv0atqt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:40:22 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c522c44febso81639085a.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 03:40:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769514022; x=1770118822; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pyTXE/4ktfP1wNLAIJ7/zW9REPL6MyuWS6OZkwLnWWY=;
        b=GDD5oV66+O/Bub9GGusy7cEfXGoZdJ3OG++34u1Ow2LEer5FBPXPlyTQI+u4ReEfBo
         +3yWFRAHVbd7H2HyTKQtn+1e8kNwm0zJrzFdYsOrmCAzeaiPjSsAwJw8SObfz6qxyKB/
         04U2cY22mXbyDM2xJ0GS2q08orHWuWu1hD6Owwr+CKyA3zSnlt9o6MX/oFZebzWO5TLs
         /CBQ1mM5I9NKJWRgR9fE8XdGabUoOGxSMkILfA9c07bXs/SWoyXXy/vVerWYA8EIk5Vk
         MQiCSDWTtZddbtGZYkxxcjAvxx7TRW1z/UIrwZ2rnQxDZhbEXJUdBeJuxJr7jRCj89lC
         Jpgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769514022; x=1770118822;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pyTXE/4ktfP1wNLAIJ7/zW9REPL6MyuWS6OZkwLnWWY=;
        b=baDyHNTZlUx2d5M4zgTdRHTM5vxsTIS9Wu8A7UWMvWOKtv36ijRqsCU9uEmQaWr4f9
         dcOmsqjxIHyWZK22q3gh0tbgtf+L7coAc+V7yVESYWn6/RUpE71qPGs8s9i3YHVShPv1
         uonCdCvVxMRLdjJzlotUw9PVfK9f85B7zV4tG7vzMMJyTfi9Da6YClij/VSE5B1KEuKL
         7GAn+ACcUKlwbXuoQ//OwPjW7yP1FJbTRBpXjVwojlyDAPdVtQdkytlzJaa0W/NJ/vdh
         rDFH/kDUJoo7bv7TN7GCczHcGisUDSZFGkluMm1AK88tFXnvxGSSqOyfh6hNjIz6BZiG
         yFUw==
X-Forwarded-Encrypted: i=1; AJvYcCX0B1V5HgSkDUufruFA0SH5HmJNZNQsQAChIDqQE40er9Xa8tljSdmVbWv27nvIK9oA6UTp5dfh70Wc@vger.kernel.org
X-Gm-Message-State: AOJu0Ywr9AhbGljVO6zEjzD9nUubkuHpHxmNBPXkwwGaI2k827SQNfWg
	72XFYkBSIbItxow3RLFKspQv1XeEBPnKGusgoZl3StxjbzYjIjQMMPctvVxXTONOOh7uEMqFtbK
	awHdCLerG5ztKQV8ip+CKBnUH0xeuaDuo086HXDmlAlzsswkfdX5EekNYvGPQ1D+j
X-Gm-Gg: AZuq6aKCUc05jqovTmm36/PCUJHNrdvQlrldHVjqpFFDgVif4OK6ugellwFPM6P2bTp
	JE38INIyfG1lw72j8Ul2SiQqFNuZBb5US7CQdyDSlZuFRQLnjOjdlD/B0ufCPd5o9XeO0Klqa9y
	M1sVi3zXYCYJY4pqxcwNBh12SOnJXVrJCIvezu35cWaNJ4pDplFs34oWqo5dCwXzlF7j6Hjq5Gk
	EExiqiTZ4UOnIfzfkWTIHQS4etxMWp1iYanAyO4TVWFtHVM51ZWBdDweIsexfAXUYqQvIwDZwS2
	RP7AkBPloJymeFU1q3mbKMaE0sOpsK2I0GIOnpF65wNkA0J8L4wzSjKKL2+XaOwEMm6KoyJM5Cw
	WZsB/8H2y1DT9SNpii5tv9SzMnpTosxN3DWg9bORuOguGJCPEVSTxJQt29Q2tI3xCGRc=
X-Received: by 2002:a05:620a:28c6:b0:8be:7dd7:f041 with SMTP id af79cd13be357-8c70b9821b8mr101513785a.7.1769514021931;
        Tue, 27 Jan 2026 03:40:21 -0800 (PST)
X-Received: by 2002:a05:620a:28c6:b0:8be:7dd7:f041 with SMTP id af79cd13be357-8c70b9821b8mr101511385a.7.1769514021556;
        Tue, 27 Jan 2026 03:40:21 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658666bbcc2sm4473866a12.9.2026.01.27.03.40.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jan 2026 03:40:21 -0800 (PST)
Message-ID: <721580cd-b493-479f-bd1c-6fd96df1d46d@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 12:40:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] media: dt-bindings: qcom,sc7280-venus: drop
 non-PAS support
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20260126-venus-iris-flip-switch-v2-0-b0ea05e1739a@oss.qualcomm.com>
 <20260126-venus-iris-flip-switch-v2-2-b0ea05e1739a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260126-venus-iris-flip-switch-v2-2-b0ea05e1739a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 1AIUIwlHWIg_OFDOC3mudEJpKEACyWli
X-Authority-Analysis: v=2.4 cv=SvedKfO0 c=1 sm=1 tr=0 ts=6978a426 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=oktRuHzOpdk0QsFJu6YA:9
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: 1AIUIwlHWIg_OFDOC3mudEJpKEACyWli
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDA5NSBTYWx0ZWRfX8wsTKrm2Iv/J
 /7fPq6E2tH/fQeu4shCXnnTqlgFDTD0kJ2PUP/geFcDdUXsgOtKFfjytu1YiiBIDv0/8jsozNS/
 oqAyMqGdWvJhjbhlFc5EdMtrb06W4zCCpxFYRdihmC8+u5XNFp+YbQOuM5z5hYrI+XWQrZFy9YG
 U2oZG91/G5WyS9cMC8TPW7mqwUxM0IKyfY8LAuTAO/0EHiGjWDxMWnKWKJ5AqEnmPMLWPNw2Whb
 l+75buP8Zj/wRpAZOj2s1e0iGWHVvwfibf+vxA5iBXDeiw5hWh1C3CzVl+qaA7c0hRZfwb9cxQZ
 m6wTMku536kZdhedCyzdEZYpiP4I2VjTHS384aXVDJQ4onCvAHEmIdqsIDFeFw31KNast9jQOHT
 fHrnP+40dwKsht5TJfPjf5QrC79XyIfdLOZ8LtctqduYZzZ4Z6mizz8o9WbKWOb6+xe7k60D3y7
 OeMtdPP+20bUlt6vOHw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-27_02,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 clxscore=1015 suspectscore=0 impostorscore=0
 spamscore=0 phishscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270095
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259844-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0421B93C23
X-Rspamd-Action: no action

On 1/26/26 3:09 AM, Dmitry Baryshkov wrote:
> The only users of the non-PAS setup on SC7280 platform are the ChromeOS
> devices, which were cancelled before reaching end users. Iris, the
> alternative driver for the same hardware, does not support non-PAS
> setup. It is expected that in future both Venus and Iris devices will
> use different ABI for non-PAS (EL2) setup.
> 
> In order to declare only the future-proof hardware description drop
> support for non-PAS setup from the SC7280 Venus schema (breaking almost
> non-existing SC7280 ChromeOS devices).
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

The commit message could highlight the *actual* problem ("iommus"
entries aren't treated like separate entities which is exactly what
we need to avoid for this complex hw)

Konrad


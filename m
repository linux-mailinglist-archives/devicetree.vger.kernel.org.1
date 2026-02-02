Return-Path: <devicetree+bounces-261713-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wIknGzd4gGne8gIAu9opvQ
	(envelope-from <devicetree+bounces-261713-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:11:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E2169CA9E0
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:11:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 23DC5302D0B2
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 10:03:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5260357716;
	Mon,  2 Feb 2026 10:03:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U1m/l1hN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SC6a3JFF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7493C356A32
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 10:03:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770026620; cv=none; b=dz2OWSgagHbdbxVy74prF8RZNOQD5oQBIQk7U39jTVSEEX0hzsspPD6MAzn9ehkfnVVmk62Qp+4QucwOuPRpo+EfahNUQzN1HQ+45mbdFAbGPPG9Rp7yTc81XYCOUOaJSz+AzNTQN2OkVrqAYW9dOLZ9hxCJ6tkZDCkvZM5clt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770026620; c=relaxed/simple;
	bh=6MYOYdYMyCKrY+q5X+P534qD7KPIhMkmL6RSMY4gi9M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Zq3nV9W5t4MvrqV8H22NEQxxN2enXviCJlRjhauWTTFAF7sSh4TsYx7jNw2u1eITgLdMjRJGt8OUCJFo9ZX19OqdZt2PDpG/WNWkR+lfbhnekBFILm9dag6uuTlD0PnqfCHHflUHYxUh27Wn0y6gMA3XNEXXlscxK2nI53Xwsos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U1m/l1hN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SC6a3JFF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6127nAli643431
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 10:03:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1HAVl79FNGlIAUtprackUJ1sai7oBy7Ct1ZWYx+SBpQ=; b=U1m/l1hNzPZo56Yz
	GGGpqzouAxR6PfAIa5JUv1nsKSzB//lGpDmz/1LiyDhnECeZ5ZmDoB06KAgFI1E0
	fvEnHrWqL40QdlXJehjm99A8MyZV2+zB/mI2CRWtxtDP8UmsLf6KT526mYztg1nT
	vAuYGZAC39LR2/eSyrLVbGPQBvZXlxv3+HbW0P+YB1HJr3DlI+R2P0fEZbh6VsLj
	sNM8AXk8uMiu+MFtaSz15zgPxGojRmcHrfjaC2xyCpgJMKzNbNhxgArnU+4OPGui
	YOSOVgGclh6EsnNd7FFgejMlg0yjzmjewUt8n1iHK5zzfA7J8mJQSihopDUVyTH4
	0t4ouA==
Received: from mail-yx1-f72.google.com (mail-yx1-f72.google.com [74.125.224.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1b17vxjk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 10:03:38 +0000 (GMT)
Received: by mail-yx1-f72.google.com with SMTP id 956f58d0204a3-6493dc921f9so755953d50.2
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 02:03:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770026617; x=1770631417; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1HAVl79FNGlIAUtprackUJ1sai7oBy7Ct1ZWYx+SBpQ=;
        b=SC6a3JFF30g1/J/wrOn5QetpfQktA7XOch2gh8oM7jCz4SZBbHoYP2FO7i1PJ/AKL1
         mpxmo9J2dBLhaikOqSz/LCBcVzdzAS+bAuywe2WpD4aPuPNEzqkJ3FE0RobtBRiL5CTm
         2uAaLpChLF6bQJw0YSaIAKofCl/smiIJYnwSvemKQynamWiAsaPzq0KBFzmy9qMTV0ie
         XYuH2Db4t9Uo6ekzwvByv2F+1dh6bgG+DVP8ebFX3Vdql1rr5jRROY21rvxdu//1eIIW
         Dm7EbaLpXaAoCAmW563sCw4DkLtG23XiTr4QIuPV7lc0DKxX+oyE1w1sJOoJJnzKxyvI
         pLMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770026617; x=1770631417;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1HAVl79FNGlIAUtprackUJ1sai7oBy7Ct1ZWYx+SBpQ=;
        b=OkT5xPwR1HptI9Z4ox6urU/LrSkW8ZjGZS5u43Ng8ub5WTPgv/M3eC/icoq1BX1Rzv
         9j/ySHIkuuGTR3iUCpXeWYnz35A4F82IkfOxatv7ynuWvFdwwQd+P2UAboKB2pr7ptza
         vesCPbImm7JBoMPMUK7Y7y4qnTyJKZ11OZh7RXrNIyYifVXwsFwP6ABDARTJpYaD7T3s
         EX8mZLva0CcwdRbSlVkFm1oCBcAx4S8c7K4Q31PqA5YQyIpxGHyWLq8n+uik93t/LnpI
         41WKu4ihROuAH3c8Uc1Tmq/AZx/9+z65ISEr2TZ+nXqc39bl0C6NkeJIVBfR0YlSFYMe
         i/4A==
X-Forwarded-Encrypted: i=1; AJvYcCVbY/QnrP6oIw+G5LvAHVzPJMRTIZMnDfngjRkytSP6E8vPYz5kUEDxSlXXH2lJkJhSAZV4ICvNyLFr@vger.kernel.org
X-Gm-Message-State: AOJu0YyNyl8YBSQ5l2a128g8voiEecHUp94OghjWJdOKtheOecOA8zMa
	nTHT+OyI1Udxhr2/qC7NHUIBI1DTRw2/CIqGrs4AUTex5ZOwH0X/4SETj1j7XgCFCHVXT+3PZAu
	odIzYtiWtcfYHZL3v6PvUpmRoDtkxnuyE0Fz+te1aX0rpMLcMS6G4BE1/ZfXwFW6q
X-Gm-Gg: AZuq6aIZqVLEix+FMAKAtRSJ7He1nB9xizhB+TLIKM2nIUsRKFmA4D1RrpNTIH47uU4
	FE3peeSeX4v6UgRm/kwGFPVYOnFDLGNtvTuVpeuPi4R9aszBZ0gVVNAyIW/Jyi5updL0pIf8vO/
	Tt4X/yUyjyBKt3a1DCCW3mvclaVq4ngdU14obgA9TTPaOMwyJ0vkSq+csnF8Y0VrhkFa2zPx7gs
	zbEtNq6vkG7QMgzwQbg65PvoDfSrG+9TnwJcZFfiGZtZykTBOS0kFgflrHnBJ41Ff1qmwpYciAG
	5CNgHkC5gHEfa4ylqz1SLYO/uNQ0nHm/v62YCMKqoLaTv1p6eaABsFK1PY6BMMASHr39rN+p4/z
	sWfq7WgvnJDhGL8gioXAICxC/QFOHeZzyApJPtoqcleDuE579B62kjwehyenkYTY8Vsc=
X-Received: by 2002:a05:690c:fce:b0:794:d80f:d029 with SMTP id 00721157ae682-794d80feb51mr14857357b3.7.1770026617329;
        Mon, 02 Feb 2026 02:03:37 -0800 (PST)
X-Received: by 2002:a05:690c:fce:b0:794:d80f:d029 with SMTP id 00721157ae682-794d80feb51mr14857207b3.7.1770026616951;
        Mon, 02 Feb 2026 02:03:36 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbef86deesm853407766b.3.2026.02.02.02.03.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Feb 2026 02:03:35 -0800 (PST)
Message-ID: <b06767db-e3ce-4f68-8111-70cb6e152975@oss.qualcomm.com>
Date: Mon, 2 Feb 2026 11:03:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/8] arm64: dts: qcom: sm8250: add MX power domain to
 the video CC
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>, Jonathan Marek <jonathan@marek.ca>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Bryan O'Donoghue <bod@kernel.org>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Hans Verkuil <hverkuil@kernel.org>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Dikshita Agarwal <dikshita@qti.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-media@vger.kernel.org,
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
References: <20260201-iris-venus-fix-sm8250-v2-0-6f40d2605c89@oss.qualcomm.com>
 <20260201-iris-venus-fix-sm8250-v2-6-6f40d2605c89@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260201-iris-venus-fix-sm8250-v2-6-6f40d2605c89@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=LcAxKzfi c=1 sm=1 tr=0 ts=6980767a cx=c_pps
 a=VEzVgl358Dq0xwHDEbsOzA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=qsDWvSvgGUoFJVTE-XUA:9
 a=QEXdDO2ut3YA:10 a=uujmmnXaIg8lM0-o0HFK:22
X-Proofpoint-ORIG-GUID: VkeCXHYPWkpxMSQeVTy4YDVLHGoFT2xV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA4NSBTYWx0ZWRfXxRddtI3jdFPF
 5vMUzXg0pjpYorfDSxiqhhrns+77v8gewBAwU9/3ZSiInc8kMEERJMaCcunsTl7zsfpCDS9oVa+
 nU+wVMPd/5thGTQhaLy7YXmjXXHD7y2OSsk/R1MAO8CenG3A156AsINW7fejODakSmGLQ+QurkN
 2z29pNz5CpeOvJ6C6QIgOvJmNDgSZkLEXgjG9SFauupUaU8p85nY5wX4AjG4IBh/Mr7rKczDdW0
 aXZkKNaMcizNqDyTFR0prSoOHNvB0jiPS8QfNdI787TyJcDHO1BLwHmCmJpQf/UAYIhkD2IcjAM
 TsZqBy1Ol5jWNnpb0T9dh35R3A7Wwc3Uqur0WgBd2U1Z7g/73J445IaGD/Jwr0if0xh16oIgxKN
 a5DTZ+lRZsOYI1d7yqWMncnZKco/UFiDviEzUkMKtFveRjVmQhkZ0BI89wE39IwMqiIXJCRzKJs
 MRHjPA65B9PPn6Y4jEw==
X-Proofpoint-GUID: VkeCXHYPWkpxMSQeVTy4YDVLHGoFT2xV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_03,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020085
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
	RCPT_COUNT_TWELVE(0.00)[29];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261713-lists,devicetree=lfdr.de];
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
	TAGGED_RCPT(0.00)[devicetree,dt,huawei];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E2169CA9E0
X-Rspamd-Action: no action

On 2/1/26 11:49 AM, Dmitry Baryshkov wrote:
> To configure the video PLLs and enable the video GDSCs on SM8250,
> platform, the MX rail must be ON along with MMCX. Update the videocc
> device node to include the MX power domain.
> 
> Fixes: 5b9ec225d4ed ("arm64: dts: qcom: sm8250: Add videocc DT node")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


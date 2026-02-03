Return-Path: <devicetree+bounces-262246-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cNGSIU7ugWlAMwMAu9opvQ
	(envelope-from <devicetree+bounces-262246-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 13:47:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE1FD943A
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 13:47:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3E58E3030ED5
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 12:46:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BD053469FA;
	Tue,  3 Feb 2026 12:46:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UXmVbJsG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="W4jnP9y4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9E7A346777
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 12:46:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770122767; cv=none; b=T4BWYPLbx+6TPcpdb3hI7BCzlyAosJ8+DXfym6uOfpd4S4VNd+opZUEne3b4CO66oTf7esxZEXenWtDxnQkblRiif0T3xx/XWvMjfv+/KKPu7SxeNBEIPleDjr1Dj1rJJQ2Dl6uOurJiPUF/XYFzDfSG9RlV7ZGNpJKB9pIzu9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770122767; c=relaxed/simple;
	bh=Amt4X3KSlJX678bBl9A+eSsRqBFfHPh2lmxoRfYMDKs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=m1cuNfqMLtri0G4rMSx2olGNP2IfqimpMVkqOnhompdinyU5oWHlpHRKRRT2HfNrvXHh9XoF3a/RviJtTJTProTo/0a4a/2oVHpZrD4onB8dV+2EAJXxIxRtxWSr03UVh20dwOD9lNa0wc1Jv4iAJ2KnCvUUWGhwj+uBckvRYC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UXmVbJsG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=W4jnP9y4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 613A4Lu91592485
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 12:46:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FBvhKZkKdw5hN7UDdsLxHbqK1hX81+Qqdtt60bvn9tA=; b=UXmVbJsG8lh2lcEZ
	fzLYxShXvgSZtc28blNMIHWg8BhbPJqO8AeevkQbci6oEOvm4OYyyvFdbU6i/wzf
	cZeFmZZPQgYUw6oFQt4Ll7SfnWekmg8KDWGliNBclBiQ2LhEnFgKFvF+vJEOklmB
	ChHvccGu208DIPM398dWSJfS+msOzxsSC1Ao8m0kPUUIJ1j+fQq6lvreJ6iMczsH
	S8QjGpizXbsI811ny9/hnZL2nlI6UEaDNDoOqabGoDWy+uwhqJyBT3SdgftK7CUU
	Y+76h/7S6P1knbxOEXCl5MsGUJ3yaW5tK44JQRyfak+yW7D6opCU7vlv0p/qBbLS
	ApIK6w==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3exjgdna-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 12:46:05 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b2e518fb75so49671085a.3
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 04:46:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770122764; x=1770727564; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FBvhKZkKdw5hN7UDdsLxHbqK1hX81+Qqdtt60bvn9tA=;
        b=W4jnP9y4+gDw9VrpV8pF+fq0/g9TRiEi+V205LzKK0SVYYddtq6JsHXb9bTt6/QOXa
         AQ82Vc2gZ7DhbG0xq2CHY0USTf0KwLP97NxuOOho2vvx65AdlGpn/p5OlQ+1TpQkFSHW
         qJybJPiuZ6Q5M/fwwL90EGYuqmFM8+gDYk0fe3e0y5HSGuzF1vr+mx1gjzN53YBYGkFV
         d5r0BedCAl5zTJpeAEY2lNccMS/8PxjUk/YAhqLFRgGd8iS+w6FX3cX0qh26e1PhRHQw
         goNT1RD0FJ1LNQRx5z87tYwMD3NrM/Tm4EEPDQkmz0o7C4d/mGLfy1UeXl6iJCeYuSke
         Ln6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770122764; x=1770727564;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FBvhKZkKdw5hN7UDdsLxHbqK1hX81+Qqdtt60bvn9tA=;
        b=QFskIgHXl5cf2854nrG+86BQsZqtX1S+sDSS+Dt/lGMVYGROL/MndQk9kLivSci/NU
         HvDX0dXDzIU5IQdaR4ZiB5Oj3HKWM27kWoJfr7sB+kWL8qlEAMn3zESkKXQdWtJ2YIOR
         5sZSKvZCrqkiGFwr5RFtgvj9MrxexR9Zqq3cQyGX8v8UN+zae9lMplPMqHqONrADHuAt
         oOPu/+uukSpXFuyVL7K9UWDqj9Wu9BZa2Mrq/aKiu9WiDv0grZY/2AOzetI2IR5/g+LZ
         sX41wbNyWObY6+jYOsqlNfPRc2tyGayhlPD8Pzav81vvROfZhq9ekaOqlzv/vwwjRRf7
         j4fA==
X-Forwarded-Encrypted: i=1; AJvYcCU9zyylqAPH5G+N7t2yo9BdWWBxrCeb7WehA1aeoWsik5jtn0YOhdd8+oPsM7RAHsG4RI+neqG4N7nH@vger.kernel.org
X-Gm-Message-State: AOJu0YwILk9qZsxZpSBKY0S+b0D1UrUhbKQI3yGqGJ73DhbBaL6jbHpx
	GokL2ekZoGPk6T/W+3mJalbKCab2du8jda3NIBd4s8i8Sx7AB4VBURtKtT1Z1k0lDNSKGoSkuyg
	FQmx0T1f/EsALEpgMFBODb06z2ogTo2OWxapN4atU4ITPfOkfnNrPewhkd0ECKmv2
X-Gm-Gg: AZuq6aJBWd6PCrZOFEPOPFZZbhsYmDUX/aW2ZL3KXcpcsK78DGI5nv8B9Zbi1KATdqr
	fMLkqLCXe9Zy//CfFK5C31PpHOtuRhP8u4Px4tqL9tQsseZQ4nlUREiEYJuqfb3yN6A5BytGwxi
	J5y1YWJ6pcHEGLMJcLh4RTIA0YAmwoieorgCfxL8SiQE/knPepCio7FJan+0zdnJhPv76YWjJ6N
	koAoszGAOHPmqG4ZcDn8hFW4mLArgATxAFqSHFpdqDy+BLEexkRa0+8cTlC5srEuptxYnlrc7p/
	x33BdhVjYXj6C1FRnm/teLlOIedkqAi/b8jQn/LsHQakTDZnnA4ezGdP9A1JqSkmRUW6i29slJF
	CkwTwn9J4PLmlLbcStRs0m/gu97lHogdJGNd5tE0EXrGBARtUienfAAIhlpR/EVfwH6M=
X-Received: by 2002:ae9:e710:0:b0:8c9:eb7f:b6d with SMTP id af79cd13be357-8c9eb7f16d1mr1175878185a.4.1770122764234;
        Tue, 03 Feb 2026 04:46:04 -0800 (PST)
X-Received: by 2002:ae9:e710:0:b0:8c9:eb7f:b6d with SMTP id af79cd13be357-8c9eb7f16d1mr1175875585a.4.1770122763860;
        Tue, 03 Feb 2026 04:46:03 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658b4691db4sm9081780a12.22.2026.02.03.04.46.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 04:46:03 -0800 (PST)
Message-ID: <d7855286-e4d7-4418-a92a-0ed71ab72d7e@oss.qualcomm.com>
Date: Tue, 3 Feb 2026 13:46:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 10/13] i2c: qcom-geni: Move resource initialization to
 separate function
To: Praveen Talari <praveen.talari@oss.qualcomm.com>,
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
        jyothi.seerapu@oss.qualcomm.com
References: <20260202180922.1692428-1-praveen.talari@oss.qualcomm.com>
 <20260202180922.1692428-11-praveen.talari@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260202180922.1692428-11-praveen.talari@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=W8c1lBWk c=1 sm=1 tr=0 ts=6981ee0d cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=z1U-K7oe7a0A7by5uvYA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: 88Y9SHHtepnQmloYK8zCT_UzWLOli_Cg
X-Proofpoint-ORIG-GUID: 88Y9SHHtepnQmloYK8zCT_UzWLOli_Cg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDEwMiBTYWx0ZWRfX+BJMI+ejx8Vs
 bpgxcxKKfDUotY8DCae45QMN6XnbD7C7bs0bdZDCoPpVOPwFj8j1tV/v88IoXoy5YVJdmg4ZKhi
 njuwYRS3zSoxCansD5tvAEnRa9x5mTu0ftP0bMpDh3ksbgRUHAPyVzPLHixoYY7sTfAHInStqvJ
 cbq8Oj32kqAxS9AXNRESStEYIdZC9ndtlbHaZOKav/3SzDmbpnbcPd/SgyzWfZ7iyyRmfPLQIbY
 gOGWQ1qRhdHVzlRwvrsXn5uWWwSWVeRYKuS9sF3At9n60EjUyUhtwkjVZiyuU2J1IbTlYqvCvBt
 d6yR3pjq3+WFBir0ViA0mxQNd3OSHmtLsHNQl8sjscCH0u77TFgFirr/kVNCc9ZA8R8oNsOjcK+
 e44fsFxMe2LCi1suXGyaaexy17EFMUkYal3LgKlIkFqzUj4ljZ9qPw0QBJgzeSWVjBXVqQTwjcv
 8ljq6sewv7GLKbYTytg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_04,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 suspectscore=0 lowpriorityscore=0 spamscore=0
 phishscore=0 impostorscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602030102
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[bounces-262246-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
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
X-Rspamd-Queue-Id: 0EE1FD943A
X-Rspamd-Action: no action

On 2/2/26 7:09 PM, Praveen Talari wrote:
> Refactor the resource initialization in geni_i2c_probe() by introducing
> a new geni_i2c_resources_init() function and utilizing the common
> geni_se_resources_init() framework and clock frequency mapping, making the
> probe function cleaner.
> 
> Acked-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


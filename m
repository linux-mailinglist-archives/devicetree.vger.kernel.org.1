Return-Path: <devicetree+bounces-261193-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iElVGpKUfGkQNwIAu9opvQ
	(envelope-from <devicetree+bounces-261193-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 12:22:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3F4BA06A
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 12:22:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CB7BF305B46F
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 11:19:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3CCE367F20;
	Fri, 30 Jan 2026 11:19:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AxqFUA1V";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QdCylakC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEEB73382F4
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 11:18:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769771942; cv=none; b=Sd6v862CTSFb6PvTwLSlXJjuHY8uW5ZGaQwdC3410ikDIx51pzsIsVl3wBkjg0w42/Z7ZzXm7+iKEPW2CTIAVehAEmBu/X3Kqi6X/xQMAAg8CCDtiYE2v7fbkA6MA7Vb1E9MVrIdcERFNdv0Jg2TgMiNli8ICRfyc1gbgv7YAkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769771942; c=relaxed/simple;
	bh=wgAliZeWKdq9v7QPy4UKFSpZpHhIs0m4Meochnf1yC8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EH50S1utPleRWxYiA6hhJeLtYjcBxSPkWRvQd6xD+NIGghCtD3m3ESqiXfBHv7paLkc4q2FzUjHVxtQ4sxOnPc/88cwcnpiXDdbuII6/YIC2vYfqjUZo6eDGCQxPcG7sejrwvhGJakC2womkPcYEilUd1OPfrZ6QTq0pa5IQZ3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AxqFUA1V; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QdCylakC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60UAbxvl1488302
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 11:18:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ex9GO0Pup1IY1uEeAFsAZWtpuM+CzU6Onq13HSd9IRQ=; b=AxqFUA1VaFwyISRM
	F3Nb7I6SS6DB/CiqFcK56bHvxxJ8izidZFKiQfEyb46n0utoY1FV2oqXA8mhHU4F
	dEplIj4sLXU7yXY5yNToSVUndZ/RiRoZCSmHlKMdMW9Us9EfJfOLf31/dTaOYmMN
	J3IHwKuJldkN1YjboKIf05EGa/lWncZevTtKOSW0exrQHVAmVMmUfiBYo00PU8wO
	UO9x46/XXRUB6wdi1MNZnq6S8Nh2IMjpvHcIVXarTmywFuxHC4l/qZ3LdSjvI/J3
	fLKay4snj9sYcrVqVGreSIrMFkYNUne9RbIo3Q1ygEhdj39vpHGVBmeSO/9nSShf
	fQ1vjg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c0bp3tyx1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 11:18:59 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c52de12a65so40504885a.2
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 03:18:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769771938; x=1770376738; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ex9GO0Pup1IY1uEeAFsAZWtpuM+CzU6Onq13HSd9IRQ=;
        b=QdCylakCr/FksmyHn+Wh4ogNtXAZd+K/5LUwugk12fcW4SPN76dBhnaDtWbFp3KqHs
         cfXNeNiDxVm3W7y1L7N5uWVmhe73qF1KXDXhYDpT0vYzpPz/psFmPiPZYB1DnJVwNyXp
         W8HrPU7BP7td5oXZC/CH6iZ1JZj57CI8wO1fLU2NIPicPAeuNr2N+X2lFCRdZlJpKchD
         +mtOc6RF7mWBIDRkP1nneESuRF82ddquPWwvr1UvkfqRJvnO0l1O1v+fuWk9yhhw40NS
         Bm9tAHYeavFSsulPBNAqWsYZs4RGn03jFVK84tS0Cw0l5b782jTzHHKKov5oov+D0Dh6
         QyAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769771938; x=1770376738;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ex9GO0Pup1IY1uEeAFsAZWtpuM+CzU6Onq13HSd9IRQ=;
        b=F4pWgSVRtDE3WrraNtjpKitLJitXFJlshv1F3NeO+KN/EhpgNh4BOg2N4St1iPkeV0
         vMZ6zpLk+iGGHg0dkcvoYQUs6vc77DFHJzuZj2RcgsqCBRbPFv81FRDiRbjDuNC4j5sJ
         MiguN3LZxsNTSAA4EmhAaZVPQC+psJNYWdXFmC2BDWIuixXDFLGbG9dOMB6m2Mt7unb7
         RUCpCgFXwdIoQBzgjnla7pJzjk9yn+US3xktH8GFqaDjBvGEpIEH57FDgTsa/evZrcDP
         GnQIY3lP3QDLrJmYBAVNQ4O3fA/X259mqf/bSkmdKZYcHiBUYMEgf9ffPyGg9GM6HmBe
         71mQ==
X-Forwarded-Encrypted: i=1; AJvYcCWUh1yc8ve294Q14Vmjn68F+a5kYMWhIlCaZdoJGOLrqURJZC/Tf2Cf+FtSm0FFXfO54yacnRjTsPJF@vger.kernel.org
X-Gm-Message-State: AOJu0YytNjF81fRjRvk2wJzcb6015VVOX5wDwJ3tq8RmJYSBCN/t+wCf
	Do1JSMEAnyKRk2TwFvKgGIDWfwDJwOJ2fOZce7VbvASAdo1Md/nzXdIw8YCeTAqyHeBp5VI9nqT
	bIm9irz7Ns0T6fjQjswI6lEpWyy1Ke50zvs6KVo+d/kClfBS4ElyoNicThYmxLyN+
X-Gm-Gg: AZuq6aIiei8vYg54zcAfTh7BixCcD9yroPin3qp2oi5IDq5L4Zq7FAHNJ465A31e5Xu
	CsagNA+srvLnCF9uB+nOX+deneDqaH9FHGfXxBPK2pY60PK39EoroYDg77QVR+d9r2LiyQQkCN/
	3jNl/JmJap+KoqyYetm13IczBkPsdKCdrQzYdb7fCM6VP1Zib7qN9MtE1H8/ewu0Js8kGemIX6/
	052B85PMJ+wdrUWTKz4Pf0vlWYRrkopsfYsBQM46QMBeArTf+o+6Orqda07/Ra+zpkhd2wdM9A7
	mI1Zp/vaKhvx+i/bPn7mjvNjYQaBauEq48VC0LOVQXQ7X6bLc18A8l7Em4FGvpqEcWEqpreO8bI
	SsOf43EG7jIfDH8OXe5xhMik409eZosJd21J9B3W+82QrzKXuxO7d1xrUNoc8yizzoHs=
X-Received: by 2002:a05:620a:28c4:b0:8b2:ea2d:a5 with SMTP id af79cd13be357-8c9eb2f9759mr241396685a.7.1769771938050;
        Fri, 30 Jan 2026 03:18:58 -0800 (PST)
X-Received: by 2002:a05:620a:28c4:b0:8b2:ea2d:a5 with SMTP id af79cd13be357-8c9eb2f9759mr241394985a.7.1769771937616;
        Fri, 30 Jan 2026 03:18:57 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658b4691d15sm3906121a12.19.2026.01.30.03.18.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jan 2026 03:18:55 -0800 (PST)
Message-ID: <0b4ac3c1-11b3-4991-83c2-0c39a81baa8f@oss.qualcomm.com>
Date: Fri, 30 Jan 2026 12:18:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: monaco-pmics: Add PON power key and
 reset inputs
To: Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kamal.wadhwa@oss.qualcomm.com
References: <20260122-add_pwrkey_and_resin-v1-1-a9fe87537816@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260122-add_pwrkey_and_resin-v1-1-a9fe87537816@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ToteJiaJHb76Ko4U0Zdg0TEbtP64iW-9
X-Proofpoint-ORIG-GUID: ToteJiaJHb76Ko4U0Zdg0TEbtP64iW-9
X-Authority-Analysis: v=2.4 cv=d6T4CBjE c=1 sm=1 tr=0 ts=697c93a3 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=K3N-fI1i-WqjdmaUcisA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDA5MiBTYWx0ZWRfX8kHcbd38iGGW
 BsCUhZW8id2yhoYKQgxnYRld6Z1lMm5xyZ8pwlMx2LeTCkwS9g18xHulEWwnpAjba1+jxs06VCs
 kWLo9jxPebViz8QzmRBs7oPCC/Rfg0L6xscF3LC2soUIe2/I9FLXklzEgefVo82eAA0kiw4LJ90
 2JUE24IkJXqMsT7xcXp/8Gc7dYmEpUTUKAdCoQtks0Nj5EWa0UFND5cMAOAfcFjnzWH+uIGhA0l
 ubiyd8iMMcwOSta0w6gIkXTbFfxmknzXx+kPXMCsPnU4uoIb2lQ2XigC7McQOuj2NqTxcjFEAIl
 hFnpfz0dLdXYsbkH+y1JD1EGFRTskFe2JoFMeJy9w0lf8UlUnWk7IezkYonrMXzZQfcxgb/OZW8
 e6ZA3MMeSiLyPDWlujpXr4Kp3Zypa3AYHE/nG0shaMMfRNHDBtduczXtLHcXBY04Y0W9DTEzL4t
 CbdCZ9eM3PMvit0SqQA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_01,2026-01-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 spamscore=0 lowpriorityscore=0 adultscore=0
 bulkscore=0 malwarescore=0 clxscore=1015 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601300092
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-261193-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.4.176:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: CA3F4BA06A
X-Rspamd-Action: no action

On 1/22/26 7:59 AM, Rakesh Kota wrote:
> Add the Power On (PON) peripheral with power key and reset input
> support for the PMM8654AU PMIC on Monaco platforms.
> 
> Signed-off-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/monaco-pmics.dtsi | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/monaco-pmics.dtsi b/arch/arm64/boot/dts/qcom/monaco-pmics.dtsi
> index e990d7367719beaa9e0cea87d9c183ae18c3ebc8..051407cd83eef8eace8521084b1ad012a5192ace 100644
> --- a/arch/arm64/boot/dts/qcom/monaco-pmics.dtsi
> +++ b/arch/arm64/boot/dts/qcom/monaco-pmics.dtsi
> @@ -13,6 +13,26 @@ pmm8620au_0: pmic@0 {
>  		#address-cells = <1>;
>  		#size-cells = <0>;
>  
> +		pmm8654au_0_pon: pon@1200 {
> +			compatible = "qcom,pmk8350-pon";

I see pmm8655x has some slight changes vs pmk8350 (more configs but
generally backwards compatible if we don't use them), let's add a
separate compatible in bindings so that we can maybe handle these
differences down the line:

diff --git a/Documentation/devicetree/bindings/power/reset/qcom,pon.yaml b/Documentation/devicetree/bindings/power/reset/qcom,pon.yaml
index 979a377cb4ff..14b85b0d97da 100644
--- a/Documentation/devicetree/bindings/power/reset/qcom,pon.yaml
+++ b/Documentation/devicetree/bindings/power/reset/qcom,pon.yaml
@@ -17,12 +17,16 @@ description: |
 
 properties:
   compatible:
-    enum:
-      - qcom,pm8916-pon
-      - qcom,pm8941-pon
-      - qcom,pms405-pon
-      - qcom,pm8998-pon
-      - qcom,pmk8350-pon
+    oneOf:
+      - enum:
+          - qcom,pm8916-pon
+          - qcom,pm8941-pon
+          - qcom,pms405-pon
+          - qcom,pm8998-pon
+          - qcom,pmk8350-pon
+      - items:
+          - const: qcom,pmm8654au-pon
+          - const: qcom,pmk8350-pon
 


Konrad


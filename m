Return-Path: <devicetree+bounces-270005-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id jlUWBbiKpWmADgYAu9opvQ
	(envelope-from <devicetree+bounces-270005-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:03:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 85C8E1D96AF
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:03:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 12F323047BF3
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 12:58:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B9793BA223;
	Mon,  2 Mar 2026 12:58:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S3ZIAXTU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Mvl1Vcu+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EEFF36C9F8
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 12:57:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772456280; cv=none; b=WBN0KGYP2L8Yb1A/s3ZGbM6ereS8hmKd8grZplU8Ug1yEUoMiP4FxR73Dwhk1hErC3raCOcAj6+TROHfaLY6GPqRrlqNb81Cr5ktVrgqJY6Zm3Ra9MjQ5Gl0sbdplTVDssP1mG4xxbVd24lsiHJKH+iRjVPgMT40/ItZ+Dfv6dM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772456280; c=relaxed/simple;
	bh=RT5M8GsY7mFn9Ym5AKFV0q1YsiuItnA6BMw4wY/VHuk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ht7FcAIeEk5UfH4BtQLc1f2OaZxbZROqF52KHbubBU36nrSUh46/bbMbDissFIhfTPgJYFAxJTA0Nms3i2KtXTdhMPE3qmlq7zI2PeQ6KBrp6RnW9zFNq1jlsCqJjX4jETfgpbIvS0ORlcQ6lJwHlSxP7Vyh+CUm4LJQfUfcCBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S3ZIAXTU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Mvl1Vcu+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6229JV0m3741564
	for <devicetree@vger.kernel.org>; Mon, 2 Mar 2026 12:57:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EpDXZ/Xjmg1opisOrU4PVUYgVyNpXhEk1eJi6YrUxjo=; b=S3ZIAXTU7x7xPpqf
	eFqjM+vudUsDGDiNk2kq13Y0LRY2f2X/9Q1yJKieXBUza8qdU/1bWqDdgcQkqCSZ
	11Wlrxm22/V2Fq0nC8HDM/uyJS/7s3MbkuCkl4LwA/hc6NtfDeQMUyFC9EVmOesL
	YaQrdemvSKKp8wZ3aGKVr16aiMAd9OvoE7eb6LucOb5BtDzGhJmgoraVwCSAHWBx
	IH9VGNrIHzYzjszSf5GXiBavzHaLZxhjfE8+8A88ApQSgzLUhGx+31t6HGWXz/6P
	izOO6FTI5uuXCWt3JifxJh37btRip3DQCnXi3kSCIWyx0fs0gySFdj+I/ut0+whg
	6PJiZQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cn7trgpxb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 12:57:58 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-89a012f8ab7so3191876d6.2
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 04:57:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772456278; x=1773061078; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EpDXZ/Xjmg1opisOrU4PVUYgVyNpXhEk1eJi6YrUxjo=;
        b=Mvl1Vcu+gB2keKi6g4TAuWQct5F2w4eN88ou9hERwq3IeScs3XLKQVxKnwLh6SEdg2
         pvPDPBh8U9wenceNP+0VWc63JynCdQ88UvbuPqUK3ylz9Be9ABrqutTjxyJqDxCS1LdP
         JRXVWWH5pHQSL6T1CXPwJj2G2hA/wzylL/18yutLMgukVfQD68cSfWK1DskVCWjE1uMg
         Mb7B/g6J1vYmB7W6H9fHclcz3jLuSybq/y1IV7IExsroUDD8iXGdGbxOzheQVHZMkmvU
         e4CesjlXha/heOjOyKP2nzXXAEUizQWjMHb0lZf8aauKHFNH04WuxTK8x5oslrClwt9v
         8DWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772456278; x=1773061078;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EpDXZ/Xjmg1opisOrU4PVUYgVyNpXhEk1eJi6YrUxjo=;
        b=bhKQkjJNLMZuQxcKkCaHo3jrsgGJoZPqa0nuvemrpZtAEQseY/tgoO+rR03WXKAnys
         AwNj8EuSM67tb4Xi4tO56llFMgUjHNiDd5BsduqsrvqCHJfVsysFHS0NWkuFlTMtYd1G
         xT1Pwwgmv/BqNfpEhae2jeH8NvGVFbfq6A8pwvmutXNv1+I00gi4EcF0h1E6izDTwQg6
         Ydbtl0ECQp6+Kcy8MMzPSXPY6ftjtYoXs6Yn+L3VzTLLcsvIOROA3beyZ050rUvaKe4w
         Sn+vztwTw0r5+2DcPfHY+5yjATzsUD3lskaZ52xgCVW6+JOEeNYMlqL3UOnnBVRqHrDV
         eaQQ==
X-Forwarded-Encrypted: i=1; AJvYcCVFfIysDXdWHHxU5etsD5hGyUZoMkpvGIAMQw3NH2l6gyZSMEoL4wCMBapsAEFP6CGli5OiqO2h+gJS@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9FynyK2Ob6orpmdql9O6qID/W5TYMu4NPGJ31eSUubdykZvSR
	5CRJG/LA9psqnAqlsmwODKiSrVLVEV/Blq8u/dxpCGwsTtjWnGnZJFPVaEM8F4qbCH0DBzWM9b9
	WmW6Jl0uYA5Wt2GqYjcNLzgF/TJfXC/YQpfmm8/PO8SN09eXb0y42k+wNouT3gHOiDsX0ukYv
X-Gm-Gg: ATEYQzxq9F/a96Jr9YAvqWVunFir6Wydr+3yOH0N6pqlR393+g8srXhaEadOqjbvw2I
	Osw4CNN3vX8YwdPCZdrb7EHzQUjtUFZbfmjswHIv/9dqJ3cLBefvMWfgtqCnRskZmkBG1KRCM28
	9x8J49R4+8n8UsMvXAUYd6HzjxFBzFlbPC2twJ4/vW2SbP8YCrOd1ibgFyxP6orACJJ91WEnAbi
	u5cq/KGWvkHbc9TxO6VumlR3G3er4DTvnUtJ3aiz/maZ5QhG3n3QojVSTX3liQSyX/EsFM5VHlC
	XAouHgfT0DqnFZc01Rvhmskj/zPC5C/OtQpYqEoDOkuelUOzLZmnyidvElwa1qQIwnbehbCqp1X
	yp8qLxHbFimeQsL150I7Duys4Hb5EK/gkugwVA80puOF+HcDBnxc/wbXNeFHfUfRcMik7swl+LD
	/08wc=
X-Received: by 2002:a05:6214:6106:b0:896:fd66:a084 with SMTP id 6a1803df08f44-899d1ee3349mr96986476d6.8.1772456277735;
        Mon, 02 Mar 2026 04:57:57 -0800 (PST)
X-Received: by 2002:a05:6214:6106:b0:896:fd66:a084 with SMTP id 6a1803df08f44-899d1ee3349mr96986366d6.8.1772456277366;
        Mon, 02 Mar 2026 04:57:57 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935ac70b01sm465622066b.23.2026.03.02.04.57.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 04:57:55 -0800 (PST)
Message-ID: <fcd9de7f-b65f-4a30-a74b-57bdd690422f@oss.qualcomm.com>
Date: Mon, 2 Mar 2026 13:57:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: glymur: Add glymur BWMONs
To: Pragnesh Papaniya <pragnesh.papaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sibi.sankar@oss.qualcomm.com,
        pankaj.patil@oss.qualcomm.com, rajendra.nayak@oss.qualcomm.com
References: <20260302-glymur_bwmon_dt-v1-1-f4939d75bd47@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260302-glymur_bwmon_dt-v1-1-f4939d75bd47@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDEwOSBTYWx0ZWRfXzKDfTKKsqE8u
 N0UrDbL6YodqY9OS7Sq0uOrPhdPady6ad6a6LScyQNMf3sKuQTkjmXmfIsN9RXRBWR3K7f647i4
 Cv3WzcSFF+HETqmcl7nfWD3B6H/UQcG68crfVX049kGrrc7XK6cbmcIdL9hTKIEtzvbcRsnBxu6
 2jBVoeng7RntIWENGnTxz6LbXUequyumbEdLvdNje5usgQNWbum6FfaF9NH6CNaI/0MQiBVguMh
 jWT/UgkC2KvrnYltb2kWtNjmO4+voLL4ul+QvvDiEpKAFpvzJcSXSl2LESu/0AfFEvAt+ffZ0xm
 Y4ffxyJ8TAIDQ9HR1Juz66oTK/isw4+9W6rQH/ab4XwybmaecxLOFLxYXwyW3Rxi97T+i2Wp7j1
 aYFDp8ct90jx3w/u5pKDZtg+QP1bW35t6C9YGr81pBoTIijdQyXiJ+8F1fHTTfExQPjJFRaxioL
 fSFuaKQoCo/lrXNIbnA==
X-Authority-Analysis: v=2.4 cv=TNhIilla c=1 sm=1 tr=0 ts=69a58956 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=cC3VdhgI2v16QeH5KSQA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: LK1xN53vqWmRPgQa6SHXUzdf6GsLuVI1
X-Proofpoint-GUID: LK1xN53vqWmRPgQa6SHXUzdf6GsLuVI1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_03,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 bulkscore=0 lowpriorityscore=0
 malwarescore=0 spamscore=0 phishscore=0 suspectscore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603020109
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-270005-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
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
X-Rspamd-Queue-Id: 85C8E1D96AF
X-Rspamd-Action: no action

On 3/2/26 12:46 PM, Pragnesh Papaniya wrote:
> Add the CPU BWMON nodes for glymur SoCs.
> 
> Co-developed-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> Signed-off-by: Pragnesh Papaniya <pragnesh.papaniya@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur.dtsi | 87 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 87 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
> index e269cec7942c..fd947b1a17dd 100644
> --- a/arch/arm64/boot/dts/qcom/glymur.dtsi
> +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
> @@ -2264,6 +2264,93 @@ &config_noc SLAVE_QUP_0 QCOM_ICC_TAG_ALWAYS>,
>  			};
>  		};
>  
> +		/* cluster0 */
> +		bwmon_cluster0: pmu@100c400 {
> +			compatible = "qcom,glymur-cpu-bwmon", "qcom,sdm845-bwmon";
> +			reg = <0x0 0x0100c400 0x0 0x600>;
> +
> +			interrupts = <GIC_SPI 903 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			interconnects = <&hsc_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>;
> +
> +			operating-points-v2 = <&cpu_bwmon_opp_table>;
> +
> +			cpu_bwmon_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				opp-0 {
> +					opp-peak-kBps = <800000>;
> +				};

Can these values remain unchanged vs hamoa? Glymur has more memory
channels (as reflected in the icc driver) so the values send to rpmh
will be a third lower

Similarly, hamoa has roughly the same values as kona, which has half
the channels

Konrad

